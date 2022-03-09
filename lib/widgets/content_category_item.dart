import 'package:flutter/material.dart';

import '../shared/theme.dart';
import 'rating_item.dart';

class ContentCategoryItem extends StatelessWidget {
  final String imagaUrl;
  final String name;
  final String price;
  final double rating;

  const ContentCategoryItem({
    Key? key,
    required this.imagaUrl,
    required this.name,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.only(bottom: 16),
      width: double.infinity,
      height: 60,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagaUrl,
              width: 60,
              height: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  'IDR $price',
                  style: greyTextStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Row(
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
        ],
      ),
    );
  }
}
