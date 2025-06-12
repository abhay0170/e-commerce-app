
import 'package:e_commerce_app/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/widgets.dart';

class THomeCategory extends StatelessWidget {
  const THomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TVerticalImageText(
            image: TImages.lightAppLogo,
            title: "shoes",
            onTap: () {},
          );
        },
      ),
    );
  }
}
