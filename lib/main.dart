import 'package:coinfo_app/api/coin_api.dart';
import 'package:coinfo_app/cubit/crypto_cubit.dart';
import 'package:coinfo_app/cubit/gainers_crypto_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/verify_email_screen.dart';
import 'screens/setpin_screen.dart';
import 'screens/congratulation_screen.dart';
import 'screens/home/main_page.dart';
import 'screens/detail_coin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CryptoCubit(),
        ),
        BlocProvider(
          create: (context) => GainersCryptoCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => const SplashScreen(),
          "/register": (context) => const RegisterScreen(),
          "/login": (context) => const LoginScreen(),
          "/verifemail": (context) => const VerifyEmailScreen(),
          "/setpin": (context) => const SetpinScreen(),
          "/congrats": (context) => const CongratulationScreen(),
          "/main": (context) => const MainPage(),
        },
      ),
    );
  }
}
