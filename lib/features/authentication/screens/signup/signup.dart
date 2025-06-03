import 'package:e_commerce_app/common/widgets/Login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/Login_signup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: TSize.spaceBtwSections,
              ),
              //! form
              TSignupForm(),

              //? terms & condition
              TermsAndConditions(),
              SizedBox(
                height: TSize.spaceBtwItems,
              ),

              //? create account button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => VerifyEmailScreen()),
                      child: Text(TTexts.createAccount))),
              
              SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //! divider
              TFormDivider(dividerText: TTexts.orSignupWith.capitalize!),
              SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //! social button
              TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
