import 'package:flutter/material.dart';

import './screens/splash_screen.dart';
import './screens/login_screen.dart';
import './screens/register_screen.dart';
import './screens/verify_email_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "/register": (context) => const RegisterScreen(),
        "/login": (context) => const LoginScreen(),
        "/verifemail": (context) => const VerifyEmailScreen(),
        "/setpin": (context) => const VerifyEmailScreen(),
      },
    );
  }
}
