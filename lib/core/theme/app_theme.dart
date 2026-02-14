
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFF0D47A1),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 96.0, fontWeight: FontWeight.bold, color: Color(0xFF212121)),
      titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color(0xFF212121)),
      bodyMedium: TextStyle(fontSize: 16.0, color: Color(0xFF424242)),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFF448AFF)),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF448AFF),
    scaffoldBackgroundColor: const Color(0xFF121212),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 96.0, fontWeight: FontWeight.bold, color: Colors.white),
      titleLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 16.0, color: Colors.white70),
    ),
    colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark).copyWith(secondary: const Color(0xFF448AFF)),
  );
}
