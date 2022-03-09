import 'package:flutter/material.dart';
import 'package:food_market/shared/theme.dart';
import 'package:food_market/widgets/content_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // NOTE : HEADER
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FoodMarket',
                        style: blackTextStyle.copyWith(
                          fontSize: 22,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'Let’s get some foods',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/img_profile.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            // NOTE : CONTENT
            Container(
              padding: const EdgeInsets.only(left: 24),
              width: double.infinity,
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ContentItem(
                    imageUrl: 'assets/img_food_1.png',
                    name: 'Cherry Healthy',
                    rating: 4,
                  ),
                  ContentItem(
                    imageUrl: 'assets/img_food_2.png',
                    name: 'Burger Tamayo',
                    rating: 3,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            // NOTE : CATEGORY
          ],
        ),
      ),
    );
  }
}
