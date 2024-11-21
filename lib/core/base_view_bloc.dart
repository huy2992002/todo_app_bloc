import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/core/base_bloc.dart';
import 'package:todo_app_bloc/core/base_event.dart';
import 'package:todo_app_bloc/core/base_state.dart';
import 'package:todo_app_bloc/resources/app_colors.dart';

class BaseViewBloc<B extends BaseBloc<BaseEvent, BaseState>>
    extends StatelessWidget {
  final B bloc;
  final Widget child;
  const BaseViewBloc({
    super.key,
    required this.bloc,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.hFFFDF4,
      body: SafeArea(
        child: BlocSelector<B, BaseState, bool>(
          selector: (state) => state.isInitialLoading,
          builder: (context, isInitialLoading) {
            if (isInitialLoading) {
              return const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return child;
            }
          },
        ),
      ),
    );
  }
}