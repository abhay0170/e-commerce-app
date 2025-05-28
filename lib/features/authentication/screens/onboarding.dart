import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable page
          PageView(
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TText.onBoardingTitle1,
                subtitle: TText.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TText.onBoardingTitle2,
                subtitle: TText.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TText.onBoardingTitle3,
                subtitle: TText.onBoardingSubTitle3,
              )
            ],
          ),

          //skip button
          OnboardSkip()

          // dot navigation smooth indictor

          // circular button
        ],
      ),
    );
  }
}

