import 'package:e_commerce_app/features/authentication/screens/onboarding/controller/onBoarding_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardSkip extends StatelessWidget {
  const OnboardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtility.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
            onPressed: () {
              OnboardingController.instance.skip();
            },
            child: Text("Skip")));
  }
}
