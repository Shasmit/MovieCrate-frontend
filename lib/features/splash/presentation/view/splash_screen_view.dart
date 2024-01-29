import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/constants/app_color_theme.dart';
import '../viewmodel/splash_viewmodel.dart';

class SplashScreenView extends ConsumerStatefulWidget {
  const SplashScreenView({super.key});

  @override
  ConsumerState<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends ConsumerState<SplashScreenView> {
  @override
  void initState() {
    // Wait for 2 seconds and then navigate
    Future.delayed(const Duration(seconds: 2), () {
      ref.read(splashViewModelProvider.notifier).init(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appbarColors,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/backgrounds/filmcrate.png",
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.2,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 30,
            ),
            CircularProgressIndicator(
              color: AppColors.navbarbodyColors,
            )
          ],
        ),
      ),
    );
  }
}
