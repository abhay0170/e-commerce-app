import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final void Function()? onPressed;

  const SuccessScreen(
      {super.key,
      required this.onPressed,
      required this.image,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: TSize.appBarHeight * 2,
          left: TSize.defaultSpace,
          bottom: TSize.defaultSpace,
          right: TSize.defaultSpace,
        ),
        child: Column(
          children: [
            //? image
            Lottie.asset(
              width: THelperFunction.screenWidth(),
              fit: BoxFit.fitWidth,
              image
            ),
            //? title
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSize.spaceBtwSections,
            ),
            //? button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(TTexts.tContinue),
                )),
          ],
        ),
      ),
    );
  }
}
