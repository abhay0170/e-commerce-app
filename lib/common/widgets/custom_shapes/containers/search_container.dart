import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    required this.icon,
    this.showBackground = false,
    this.showBorder = true, required this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    // print(dark);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Container(
          width: TDeviceUtility.getScreenWidth(context),
          padding: EdgeInsets.all(TSize.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? TColors.dark
                      : TColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSize.cardRadiusLg),
              border: showBorder
                  ? Border.all(color: dark ? TColors.dark : TColors.light)
                  : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: TColors.dark,
              ),
              SizedBox(
                width:TSize.spaceBtwItems
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: TColors.dark.withValues(alpha: 0.7),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
