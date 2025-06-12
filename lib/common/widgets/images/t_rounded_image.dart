
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.height,
    this.border,
    this.padding,
    this.onPressed,
    this.borderRadius= TSize.md,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.applyImageRadius = true,
    this.backgroundColor = TColors.light,
    required this.imageUrl,
  });

  final double? width, height;
  final BoxFit fit;
  final String imageUrl;
  final BoxBorder? border;
  final bool isNetworkImage;
  final double borderRadius;
  final Color backgroundColor;
  final bool applyImageRadius;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        border: border,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: applyImageRadius
            ? BorderRadius.circular(borderRadius)
            : BorderRadius.zero,
        child: Image(
          image: isNetworkImage
              ? NetworkImage(imageUrl)
              : AssetImage(imageUrl) as ImageProvider,
          fit: fit,
         
        ),
      ),
    );
  }
}
