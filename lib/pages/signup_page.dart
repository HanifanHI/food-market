import 'package:flutter/material.dart';
import 'package:food_market/pages/signin_page.dart';
import 'package:food_market/shared/theme.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              // NOTE : HEADER
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: cBlackColor,
                      size: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 26,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: blackTextStyle.copyWith(
                          fontSize: 22,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Register and eat',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 74,
              ),
              // NOTE : FORM SIGN UP
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/ic_ellipse.png',
                    width: 110,
                    height: 110,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90 / 2),
                      color: cGreyLightColor,
                    ),
                    child: Text(
                      'Add\nPhoto',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              // NOTE : FORM
              Text(
                "Full Name",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: TextFormField(
                  autocorrect: false,
                  cursorColor: cBlackColor,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Type your full name',
                    hintStyle: greyTextStyle,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Email Address",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: TextFormField(
                  autocorrect: false,
                  cursorColor: cBlackColor,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Type your email address',
                    hintStyle: greyTextStyle,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // NOTE : PASSWORD
              Text(
                "Password",
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: TextFormField(
                  autocorrect: false,
                  cursorColor: cBlackColor,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Type your password',
                    hintStyle: greyTextStyle,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              //  NOTE : BUTTON COTINUE
              GestureDetector(
                onTap: () => Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return const SigninPage();
                }), (route) => false),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    color: cYellowColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Continue',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
