import 'package:flutter/material.dart';
import 'package:food_market/pages/home_page.dart';
import 'package:food_market/shared/theme.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              //  NOTE : TITLE
              Text(
                'Sign In',
                style: blackTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: medium,
                ),
              ),
              Text(
                'Find your best ever meal',
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
              const SizedBox(
                height: 74,
              ),
              // NOTE : FORM
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
                  autofocus: true,
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
              //  NOTE : BUTTON SIGNIN
              GestureDetector(
                onTap: () => Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomePage();
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
                    'Sign In',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              // NOTE : BUTTON CREATE ACCOUNT
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: cGreyColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Create New Account',
                  style: whitekTextStyle.copyWith(
                    fontWeight: medium,
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
