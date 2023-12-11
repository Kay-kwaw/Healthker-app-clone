import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthker/constants/Index.dart';
import 'package:healthker/screens/OnboardingScreen/Onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize shared preferences
  await initializeSharedPreferences();

  runApp(const MyApp(initialRoute: '',));
}

// Initialization of shared preferences
Future<void> initializeSharedPreferences() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  bool isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  if (isFirstLaunch) {
    // Perform initial setup or show onboarding screen
    prefs.setBool('isFirstLaunch', false);
    navigateToOnboarding();
  } else if (isLoggedIn) {
    // User is authenticated, navigate to the main screen
    navigateToIndex();
  } else {
    // User is not authenticated, stay on the onboarding screen or show login screen
    navigateToOnboarding();
  }
}

void navigateToOnboarding() {
  runApp(const MyApp(initialRoute: '/onboarding'));
}

void navigateToIndex() {
  runApp(const MyApp(initialRoute: '/index'));
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({Key? key, required this.initialRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      routes: {
        '/onboarding': (context) => const OnboardingWidget(),
        '/index': (context) => const Index(),
      },
    );
  }
}
