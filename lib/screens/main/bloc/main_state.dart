import 'package:todo_app_bloc/core/base_state.dart';

class MainState extends BaseState {
  final int index;

  MainState({this.index = 0});

  MainState copyWith({int? index}) {
    return MainState(index: index ?? this.index);
  }
}
