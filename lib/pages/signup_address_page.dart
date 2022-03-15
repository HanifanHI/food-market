import 'package:flutter/material.dart';
import 'package:food_market/pages/signin_page.dart';
import 'package:food_market/shared/theme.dart';

class SignupAddressPage extends StatelessWidget {
  const SignupAddressPage({Key? key}) : super(key: key);

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
                        'Address',
                        style: blackTextStyle.copyWith(
                          fontSize: 22,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Make sure it’s valid',
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
              // NOTE : FORM
              // NOTE : PHONE NO.
              Text(
                "Phone No.",
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
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Type your phone number',
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
              // NOTE : ADDRESS
              Text(
                "Address",
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
                    hintText: 'Type your address',
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
              // NOTE : HOUSE NO.
              Text(
                "House No.",
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Type your house number',
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
              // NOTE : CITY
              Text(
                "City",
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Select your city',
                    hintStyle: greyTextStyle,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 10,
                    ),
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 24,
                      color: cGreyColor,
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
                    'Sign Up Now',
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
