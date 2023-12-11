import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/screens/OnboardingScreen/Onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

    Future<void> _saveAuthenticationStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isAuthenticated', true);
  }

  Future<bool> _getAuthenticationStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isAuthenticated') ?? false;
  }
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<bool>(
        future: _getAuthenticationStatus(),
        builder: (context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
           
            bool isLoggedIn = snapshot.data!;

            if (isLoggedIn) {
            return const Index();
          } else {
            // Handle the case when the user is not logged in
            return const OnboardingWidget();
          }
          } else {
            // Handle loading state
            return const Scaffold(body: Center(child: CircularProgressIndicator()));
          }
        },
      ),
    );
  }
}
