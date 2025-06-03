
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:http/http.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding:
          const EdgeInsets.symmetric(vertical: TSize.spaceBtwItems),
      child: Column(
        children: [
          // email
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email),
          ),
          SizedBox(
            height: TSize.spaceBtwInputfield,
          ),
          // password
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          SizedBox(
            height: TSize.spaceBtwInputfield / 2,
          ),
    
          //? remember me & forget password
    
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(TTexts.rememberMe),
                ],
              ),
              // forgot password
              TextButton(
                  onPressed: () {},
                  child: Text(TTexts.forgetPassword)),
            ],
          ),
          SizedBox(
            height: TSize.spaceBtwSections,
          ),
          // sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: Text(TTexts.signin)),
          ),
          SizedBox(
            height: TSize.spaceBtwSections / 2,
          ),
          // create account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed:() =>  Get.to(()=> SignupScreen()), child: Text(TTexts.createAccount)),
          )
        ],
      ),
    ));
  }
}
