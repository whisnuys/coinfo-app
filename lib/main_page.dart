import 'package:flutter/material.dart';
import './constant/theme.dart';
import './screens/home_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const HomeScreen();
    }

    Widget customBottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 80,
          color: kWhiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icon_homeactive.png',
                  width: 24,
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icon_file.png',
                  width: 24,
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icon_bell.png',
                  width: 24,
                  height: 24,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/icon_user.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNav(),
        ],
      ),
    );
  }
}
