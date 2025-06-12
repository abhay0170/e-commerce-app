import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/features/store/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicter(index),
          ),
          items:
          banners.map((banner) => TRoundedImage(imageUrl: banner)).toList(),
          //  [
          //   TRoundedImage(
          //     imageUrl: TImages.sports,
          //   ),
          //   TRoundedImage(
          //     imageUrl: TImages.sports,
          //   ),
          //   TRoundedImage(
          //     imageUrl: TImages.sports,
          //   ),
          // ],
        ),
        SizedBox(
          height: TSize.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  height: 5,
                  width: 20,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex == i
                      ? TColors.primaryColor
                      : TColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
