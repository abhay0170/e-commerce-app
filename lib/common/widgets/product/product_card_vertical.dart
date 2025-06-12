import 'package:e_commerce_app/common/style/shadow.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark= THelperFunction.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSize.productImageRadios),
        color: THelperFunction.isDarkMode(context) ? TColors.darkGrey:TColors.white
      ),
      child: Column(
        children: [
          //?thumbnail,wishlist button,discount tag
          TRoundedContainer(
            height: 100,
            padding: EdgeInsets.all(TSize.sm)
            ,backgroundColor: dark? TColors.dark:TColors.light,
          )
          //? details

        ],
      ),
    );
  }
}