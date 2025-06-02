
import 'package:e_commerce_app/features/authentication/screens/onboarding/controller/onBoarding_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= OnboardingController.instance;
    final dark = THelperFunction.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtility.getBottomNavigationBarHeight(),
        left: TSize.defaultSpace,
        child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 8),
        ));
  }
}