import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthker/screens/HelpCenter/help_screen.dart';
import 'package:healthker/screens/OnboardingScreen/Onboarding_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
    designSize: const Size(360, 690)
    );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingWidget(),
    );
  }
}

