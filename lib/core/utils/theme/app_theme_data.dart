import 'package:flutter/material.dart';

class AppThemeData {
  static final theme = ThemeData(
    useMaterial3: true,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: mainColor,
    ),
    fontFamily: 'Pretendard',
    scaffoldBackgroundColor: Colors.white,
  );

  static const mainColor = Color.fromRGBO(245, 255, 250, 1);
}
