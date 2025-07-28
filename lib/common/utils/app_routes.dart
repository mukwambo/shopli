import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../src/entrypoint/views/entrypoint.dart';
import '../../src/onboarding/views/onboarding_screen.dart';
import '../../src/splashscreen/views/splashscreen_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


final GoRouter _router = GoRouter(
   navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => AppEntryPoint(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => OnBoardingScreen(),
    ),
  ],
);

GoRouter get router => _router;
