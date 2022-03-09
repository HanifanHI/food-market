import 'package:flutter/material.dart';
import 'package:food_market/shared/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const BottomNavbarItem({
    Key? key,
    required this.imageUrl,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      width: 32,
      height: 32,
      color: isActive ? cYellowColor : cGreyColor,
    );
  }
}
