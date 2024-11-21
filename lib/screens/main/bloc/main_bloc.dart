import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/core/base_bloc.dart';
import 'package:todo_app_bloc/screens/main/bloc/main_event.dart';
import 'package:todo_app_bloc/screens/main/bloc/main_state.dart';

class MainBloc extends BaseBloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {
    on<MainChangeIndexPressed>(_onChangeIndex);
  }

  void _onChangeIndex(
    MainChangeIndexPressed event,
    Emitter<MainState> emit,
  ) {
    emit(state.copyWith(index: event.index));
  }
}
