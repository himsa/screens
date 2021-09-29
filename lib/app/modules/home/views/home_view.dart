import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:screens/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack(
        [
          'Made by'.text.make(),
          'Himsa'.text.make(),
          getButton('Test 1', routeName: Routes.MAP),
          getButton('Test 2', routeName: Routes.PROFILE),
          getButton('Test 3', routeName: Routes.HISTORY),
        ],
        alignment: MainAxisAlignment.center,
      ),
    );
  }

  Widget getButton(
    String? title, {
    String? routeName,
  }) {
    return ElevatedButton(
      onPressed: () => onTapDrawerButton(routeName),
      child: '$title'.text.make(),
    );
  }

  void onTapDrawerButton(String? routeName) {
    if (routeName != null) {
      Get.toNamed(routeName);
    } else {
      Get.snackbar('coming soon', 'coming soon');
    }
  }
}
