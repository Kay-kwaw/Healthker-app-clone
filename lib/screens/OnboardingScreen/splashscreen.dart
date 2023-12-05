import 'package:flutter/material.dart';
import 'package:healthker/constants/imageconstants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset(
          ImageConstants.healthkerIcon,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}