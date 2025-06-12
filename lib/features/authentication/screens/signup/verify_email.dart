import 'package:e_commerce_app/common/widgets/success/success_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:lottie/lottie.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => LoginScreen()),
              icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            //? image
            Lottie.asset(
                width: THelperFunction.screenWidth() * 0.8,
                TImages.emailSended),
            //? title
            Text(
              TTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Text(
              TTexts.confirmEmail,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Text(
              TTexts.confirmEmailSubtitle,
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
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: TImages.verificationSuccess,
                        title: TTexts.yourAccountCreatedTitle,
                        subTitle: TTexts.yourAccountCreatedSubTitle,
                        onPressed: () =>Get.offAll(()=>LoginScreen()),
                      )),
                  child: Text(TTexts.tContinue),
                )),
            SizedBox(
              height: TSize.spaceBtwSections,
            ),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(TTexts.resendEmail),
                ))
          ],
        ),
      ),
    );
  }
}
