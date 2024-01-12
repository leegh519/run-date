import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rundate/core/utils/theme/app_theme_data.dart';
import 'package:rundate/features/presentation/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static String get routeName => '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Durations.extralong4).then(
      (value) => context.goNamed(HomeScreen.routeName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppThemeData.mainColor,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text('splash'),
            ),
          ],
        ),
      ),
    );
  }
}
