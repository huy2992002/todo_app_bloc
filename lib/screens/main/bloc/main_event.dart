import 'package:todo_app_bloc/core/base_event.dart';

abstract class MainEvent extends BaseEvent {}

class MainChangeIndexPressed extends MainEvent {
  final int index;

  MainChangeIndexPressed({required this.index});
}
