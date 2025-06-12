import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Color backgroundColor;

  const TCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.padding = 0,
    this.margin,
    this.backgroundColor = TColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundColor),
    );
  }
}
