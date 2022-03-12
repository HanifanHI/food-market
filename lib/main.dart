import 'package:flutter/material.dart';
import 'package:food_market/pages/signin_page.dart';

// import '/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SigninPage(),
    );
  }
}
