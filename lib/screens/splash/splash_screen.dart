import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app_bloc/components/app_text.dart';
import 'package:todo_app_bloc/gen/assets.gen.dart';
import 'package:todo_app_bloc/l10n/app_localizations.dart';
import 'package:todo_app_bloc/resources/app_colors.dart';
import 'package:todo_app_bloc/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initRoute();
  }

  void initRoute() {
    Timer(
      const Duration(milliseconds: 2000),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37.0)
            .copyWith(top: height * 0.35, bottom: 60.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.imgSplash.path,
                width: 120.0,
                height: 120.0,
              ),
              AppText(
                title: AppLocalizations.of(context).appName,
                titleSize: 35.0,
                fontWeight: FontWeight.w900,
                titleColor: AppColors.hFFEC4B,
              ),
              const Spacer(),
              LottieBuilder.asset(
                Assets.animated.animLoading,
                width: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
