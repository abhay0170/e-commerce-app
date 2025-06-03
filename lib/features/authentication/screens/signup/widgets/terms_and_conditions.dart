import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: TTexts.iAgreeTo,
              style: Theme.of(context).textTheme.labelMedium),
          TextSpan(
              text: " ${TTexts.privacyPolicy} ",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: dark ? TColors.white : TColors.primaryColor)),
          TextSpan(
              text: TTexts.iAgreeTo,
              style: Theme.of(context).textTheme.labelMedium),
          TextSpan(
              text: TTexts.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: dark ? TColors.white : TColors.primaryColor)),
        ]))
      ],
    );
  }
}
