import 'dart:async';

import 'package:flutter/material.dart';
import '../constant/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 4),
              width: 72,
              height: 72,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_logo.png'),
                ),
              ),
            ),
            Text(
              'Coinfo',
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
