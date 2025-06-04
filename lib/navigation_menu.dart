import 'package:e_commerce_app/features/store/screen/home/home.dart';
import 'package:e_commerce_app/features/store/screen/profile/profile.dart';
import 'package:e_commerce_app/features/store/screen/store/store.dart';
import 'package:e_commerce_app/features/store/screen/wishlist/wishlist.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunction.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
              height: 70,
              elevation: 0,
              backgroundColor: darkMode ? TColors.white : TColors.black,
              indicatorColor: darkMode ? TColors.black.withValues(alpha: 0.1) : TColors.white.withValues(alpha: 0.1),
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (value) =>
                  controller.selectedIndex.value = value,
              destinations: [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
                NavigationDestination(
                    icon: Icon(Iconsax.heart), label: 'Wishlist'),
                NavigationDestination(
                    icon: Icon(Iconsax.user), label: 'Profile')
              ]),
        ),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),StoreScreen(),WishlistScreen(),ProfileScreen()
  ];
}
