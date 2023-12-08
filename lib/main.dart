import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthker/screens/Dashboard/Dasboard_screen.dart';
import 'package:healthker/screens/LoginScreen/login_signup.dart';


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
      home: HomePageWidget(),
    );
  }
}

