import 'package:e_commerce_app/common/style/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/Login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/Login_signup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! logo title and subtitle
              TLoginHeader(dark: dark),
              SizedBox(
                height: TSize.defaultSpace,
              ),

              //! form
              TLoginForm(),
              SizedBox(
                height: TSize.spaceBtwSections,
              ),

              //! divider
              TFormDivider(dividerText: TTexts.orSigninWith.capitalize!,),
              SizedBox(
                height: TSize.spaceBtwSections,
              ),
              //! footer
              TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
