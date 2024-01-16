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
      background: Colors.white,
      onBackground: Colors.white,
    ),
    fontFamily: 'Pretendard',
    scaffoldBackgroundColor: Colors.white,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
  );

  static const mainColor = Color.fromRGBO(67, 160, 71, 1);
}
