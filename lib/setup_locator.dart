import 'package:todo_app_bloc/repositories/repositories_locator.dart';
import 'package:todo_app_bloc/screens/features_locator.dart';
import 'package:todo_app_bloc/services/services_locator.dart';

Future<void> setupLocator() async {
  await setupServicesLocator();
  setupRepositoriesLocator();
  setupFeatureLocator();
}
