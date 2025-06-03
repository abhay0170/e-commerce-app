import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        //? first & last name
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            SizedBox(
              width: TSize.spaceBtwInputfield,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: TSize.spaceBtwInputfield,
        ),
        //? user name
        TextField(
          decoration: InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        SizedBox(
          height: TSize.spaceBtwInputfield,
        ),
        //? email
        TextField(
          decoration: InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        SizedBox(
          height: TSize.spaceBtwInputfield,
        ),
        //? phone number
        TextField(
          decoration: InputDecoration(
              labelText: TTexts.phoneNumber, prefixIcon: Icon(Iconsax.call)),
        ),
        SizedBox(
          height: TSize.spaceBtwInputfield,
        ),
        //? password
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        SizedBox(
          height: TSize.spaceBtwInputfield,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: TTexts.confirmPassword,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        SizedBox(
          height: TSize.spaceBtwInputfield,
        ),
      ],
    ));
  }
}
