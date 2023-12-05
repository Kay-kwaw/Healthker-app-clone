import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthker/screens/OnboardingScreen/onboardingscreen.dart';
import 'package:healthker/screens/OnboardingScreen/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
    designSize: const Size(300, 200)
    
    );
    return const MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

