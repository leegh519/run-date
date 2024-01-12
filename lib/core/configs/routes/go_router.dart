import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rundate/features/presentation/screens/home_screen.dart';
import 'package:rundate/features/presentation/screens/splash_screen.dart';

part 'go_router.g.dart';

final navigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    observers: [
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],
    routes: [
      GoRoute(
        path: '/splash',
        name: SplashScreen.routeName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/',
        name: HomeScreen.routeName,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
    navigatorKey: navigatorKey,
  );
}
