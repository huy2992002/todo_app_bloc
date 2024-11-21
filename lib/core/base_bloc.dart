import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/core/base_event.dart';
import 'package:todo_app_bloc/core/base_state.dart';

abstract class BaseBloc<E extends BaseEvent, S extends BaseState> 
    extends Bloc<E, S> implements StateStreamable<S>{
  BaseBloc(super.initialState);
}
