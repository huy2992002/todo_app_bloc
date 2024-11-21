import 'package:get_it/get_it.dart';
import 'package:todo_app_bloc/screens/main/bloc/main_bloc.dart';

final featuresLocator = GetIt.instance;

void setupFeatureLocator() {
  featuresLocator.registerFactory<MainBloc>(() => MainBloc());
}
