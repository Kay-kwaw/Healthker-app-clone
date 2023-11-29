import 'package:flutter/material.dart';
import 'package:healthker/LoginScreen/login.dart';
import 'package:healthker/OnboardingScreen/onboardingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

