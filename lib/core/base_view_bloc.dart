import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/core/base_bloc.dart';
import 'package:todo_app_bloc/core/base_event.dart';
import 'package:todo_app_bloc/core/base_state.dart';
import 'package:todo_app_bloc/resources/app_colors.dart';

class BaseViewBloc<B extends BaseBloc<BaseEvent, BaseState>>
    extends StatelessWidget {
  final B bloc;
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigatorBar;

  const BaseViewBloc({
    super.key,
    required this.bloc,
    this.appBar,
    this.body,
    this.bottomNavigatorBar,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>.value(
      value: bloc,
      child: Scaffold(
        backgroundColor: AppColors.hFFFDF4,
        appBar: appBar,
        body: body != null
            ? SafeArea(
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
                      return body!;
                    }
                  },
                ),
              )
            : Container(),
        bottomNavigationBar: bottomNavigatorBar,
      ),
    );
  }
}
