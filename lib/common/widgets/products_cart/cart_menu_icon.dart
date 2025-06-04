
import 'dart:ui';

import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: iconColor,
          )),
      Positioned(
        right: 0,
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
              color: TColors.warning, borderRadius: BorderRadius.circular(100)),
          child: Center(
              child: Text(
            "2",
            style: Theme.of(context).textTheme.labelMedium,
          )),
        ),
      )
    ]);
  }
}
