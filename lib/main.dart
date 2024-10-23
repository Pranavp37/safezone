import 'package:flutter/material.dart';
import 'package:safezone/core/configs/theme/theme.dart';
import 'package:safezone/presentation/auth/view/signup_page.dart';
import 'package:safezone/presentation/bottom_nav/bottom_nav_bar.dart';

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
      themeMode: ThemeMode.system,
      home: const SignupPage(),
    );
  }
}