import 'package:flutter/material.dart';
import 'package:todo_app_bloc/components/app_elevated_button.dart';
import 'package:todo_app_bloc/components/app_text.dart';
import 'package:todo_app_bloc/gen/assets.gen.dart';
import 'package:todo_app_bloc/l10n/app_localizations.dart';
import 'package:todo_app_bloc/screens/home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0)
            .copyWith(top: height * 0.15, bottom: 60.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.imgWelcome.path,
                width: width * 0.6,
                height: width * 0.6,
              ),
              const SizedBox(height: 20.0),
               AppText(
                title: AppLocalizations.of(context).hereYouCanManageYourDailyTasks,
                fontWeight: FontWeight.w800,
              ),
              const SizedBox(height: 10.0),
               AppText(
                title:AppLocalizations.of(context).descriptionWelcome,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
                titleSize: 12.0,
              ),
              const Spacer(),
              AppElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                    (route) => false,
                  );
                },
                text: AppLocalizations.of(context).letGo,
              )
            ],
          ),
        ),
      ),
    );
  }
}
