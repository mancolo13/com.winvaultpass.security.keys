import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF00F2FE);
  static const Color secondaryColor = Color(0xFF4FACFE);
  static const Color backgroundColor = Color(0xFF060C12);
  static const Color surfaceColor = Color(0xFF0E1B26);

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: surfaceColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
