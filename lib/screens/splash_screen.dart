import 'package:flutter/material.dart';
import 'package:todo_app_bloc/l10n/app_localizations.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppLocalizations.of(context).appName);
  }
}
