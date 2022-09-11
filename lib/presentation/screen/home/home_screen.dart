// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean/app/config/color_config.dart';
import 'package:getx_clean/app/config/text_config.dart';
import 'package:getx_clean/presentation/screen/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: controller,
      tag: 'HomeScreen',
      initState: (state) {
        controller.fetchData();
      },
      builder: (c) {
        return Scaffold(
          backgroundColor: AppColor.white,
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(c.username.value, style: AppFont.poppins),
              ElevatedButton(
                onPressed: () => Get.toNamed('/product'),
                child: const Text('Product Screen'),
              ),
            ],
          )),
        );
      },
    );
  }
}
