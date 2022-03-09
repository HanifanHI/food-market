import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;

  const CategoryItem({
    Key? key,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: isActive
                ? blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  )
                : greyTextStyle,
          ),
          isActive
              ? Container(
                  width: 40,
                  height: 3,
                  decoration: BoxDecoration(
                    color: cBlackColor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
