import 'package:flutter/material.dart';
import 'package:food_market/pages/detail_page.dart';

import '../shared/theme.dart';

import 'rating_item.dart';

class ContentItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double rating;

  const ContentItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const DetailPage();
          },
        ),
      ),
      child: Container(
        width: 200,
        height: 210,
        margin: const EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
          color: cWhiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: cGreyColor.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 200,
              height: 140,
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Row(
                    children: [1, 2, 3, 4, 5].map((index) {
                      return RatingItem(
                        index: index,
                        rating: rating,
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    rating.toString(),
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
