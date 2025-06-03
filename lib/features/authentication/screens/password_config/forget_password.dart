import 'package:e_commerce_app/features/authentication/screens/password_config/reset_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //? heading
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: TSize.spaceBtwItems,
            ),
            Text(TTexts.forgetPasswordSubtitle,
                style: Theme.of(context).textTheme.labelMedium),
            SizedBox(
              height: TSize.spaceBtwSections * 2,
            ),

            //? textfield
            TextField(
              decoration: InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: (Icon(Iconsax.direct_right))),
            ),
            SizedBox(
              height: TSize.spaceBtwSections,
            ),

            //? submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(() => ResetPasswordScreen()),
                  child: Text(TTexts.submit)),
            )
          ],
        ),
      ),
    );
  }
}
