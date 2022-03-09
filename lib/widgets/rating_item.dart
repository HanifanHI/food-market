import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final double rating;

  const RatingItem({
    Key? key,
    required this.index,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating ? 'assets/ic_star_yellow.png' : 'assets/ic_star_grey.png',
      width: 16,
      height: 16,
    );
  }
}
