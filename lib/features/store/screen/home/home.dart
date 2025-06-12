import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/text/section_heading.dart';
import 'package:e_commerce_app/features/store/screen/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/store/screen/home/widgets/home_category.dart';
import 'package:e_commerce_app/features/store/screen/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CurvedEdgeWidget(
            child: TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //? appBar
                  HomeAppBar(),

                  //? search bar
                  TSearchContainer(
                    icon: Iconsax.search_normal,
                    text: "Search in Store",
                    showBackground: false,
                    showBorder: true,
                    onTap: () {},
                  ),

                  //? categories
                  Padding(
                    padding: EdgeInsetsGeometry.all(TSize.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Category',
                          showActionButton: false,
                        ),
                        SizedBox(
                          height: TSize.spaceBtwItems,
                        ),
                        THomeCategory()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //? body
          Padding(
            padding: const EdgeInsets.all(TSize.defaultSpace),
            child: TPromoSlider(banners: [TImages.sports,TImages.sports],),

            //! change image
          )
        ],
      ),
    ));
  }
}
