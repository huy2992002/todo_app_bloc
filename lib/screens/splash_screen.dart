import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_app_bloc/components/app_text.dart';
import 'package:todo_app_bloc/gen/assets.gen.dart';
import 'package:todo_app_bloc/l10n/app_localizations.dart';
import 'package:todo_app_bloc/resources/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.hFFFDF4,
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
              ),
              AppText(
                title: AppLocalizations.of(context).appName,
                titleSize: 35.0,
                fontWeight: FontWeight.w900,
                titleColor: AppColors.hFFEC4B,
              ),
              Spacer(),
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
