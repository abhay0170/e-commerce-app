import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.child,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radios = TSize.cardRadiusLg,
    this.borderColor = TColors.black,
    this.backgroundColor = TColors.white,
  });

  final double? height, width;
  final double radios;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radios),
          border: showBorder ? Border.all(color: borderColor) : null),
          child: child,
    );
  }
}
