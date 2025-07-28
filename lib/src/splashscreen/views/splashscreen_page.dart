import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/services/storage.dart';
import '../../../common/utils/colors.dart';
import '../../../const/resource.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Initialize the navigator after a delay
    _navigator();
  }

  _navigator() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      if (Storage().getBool('firstOpen') == null) {
        // Go to the OnboardingScreen
        GoRouter.of(context).go('/onboarding');
      } else {
        // Go to the HomeScreen
        GoRouter.of(context).go('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BColors.kWhite,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(R.ASSETS_IMAGES_SPLASHSCREEN_PNG),
          ),
        ),
      ),
    );
  }
}
