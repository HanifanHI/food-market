import 'dart:async';

import 'package:flutter/material.dart';

import '/shared/theme.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ), (route) => false),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ic_splashscreen.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "FoodMarket",
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
