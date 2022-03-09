import 'package:flutter/material.dart';
import 'package:food_market/shared/theme.dart';
import 'package:food_market/widgets/bottom_navbar_item.dart';
import 'package:food_market/widgets/category_item.dart';
import 'package:food_market/widgets/content_category_item.dart';
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
            Container(
              padding: const EdgeInsets.only(left: 24),
              width: double.infinity,
              height: 34,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryItem(
                    title: 'New Taste',
                    isActive: true,
                  ),
                  CategoryItem(
                    title: 'Popular',
                  ),
                  CategoryItem(
                    title: 'Recommended',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // NOTE : CONTENT CATEGORY
            Column(
              children: const [
                ContentCategoryItem(
                  imagaUrl: 'assets/img_food_3.png',
                  name: 'Soup Bumil',
                  price: '289.000',
                  rating: 5,
                ),
                ContentCategoryItem(
                  imagaUrl: 'assets/img_food_4.png',
                  name: 'Chicken',
                  price: '493.000',
                  rating: 4,
                ),
                ContentCategoryItem(
                  imagaUrl: 'assets/img_food_5.png',
                  name: 'Shrimp',
                  price: '507.000',
                  rating: 5,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: double.infinity,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavbarItem(
              imageUrl: 'assets/ic_home_active.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/ic_order_active.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/ic_profile_active.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
