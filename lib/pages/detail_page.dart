import 'package:flutter/material.dart';
import 'package:food_market/shared/theme.dart';

import '../widgets/rating_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // NOTE : IMAGE FOOD
            Image.asset(
              'assets/img_food_1.png',
              width: double.infinity,
              height: 330,
              fit: BoxFit.cover,
            ),
            // NOTE : DESCRIPTION FOOD
            ListView(
              children: [
                const SizedBox(
                  height: 280,
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: cWhiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(24),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 26,
                        ),
                        // NOTE :  SECTION 1
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cherry Healthy',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [1, 2, 3, 4, 5].map((index) {
                                          return RatingItem(
                                            index: index,
                                            rating: 4,
                                          );
                                        }).toList(),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '4.0',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // NOTE : BUTTON ADD & REMOVE
                            Row(
                              children: [
                                Image.asset(
                                  'assets/ic_add.png',
                                  width: 26,
                                  height: 26,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '10',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/ic_remove.png',
                                  width: 26,
                                  height: 26,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.',
                          style: greyTextStyle.copyWith(
                            letterSpacing: 1,
                            height: 1.5,
                          ),
                          softWrap: true,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Ingredients:',
                          style: blackTextStyle,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Seledri, telur, blueberry, madu.',
                          style: greyTextStyle,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        // NOTE : BUTTON & PRICE
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Price:',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'IDR 12.289.000',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 163,
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: cYellowColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'Order Now',
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
