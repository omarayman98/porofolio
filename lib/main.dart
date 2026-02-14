
import 'package:flutter/material.dart';
import 'package:porofolio/core/theme/app_theme.dart';
import 'package:porofolio/presentation/features/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light, // Or ThemeMode.light, ThemeMode.dark
      home: const HomeScreen(),
    );
  }
}
