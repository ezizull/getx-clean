// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

// Project imports:
import 'package:getx_clean/app/config/route_config.dart';
import 'package:getx_clean/presentation/screen/home/home_binding.dart';
import 'package:getx_clean/presentation/screen/home/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: builderApp,
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      home: const HomeScreen(),
      getPages: AppRoute.pages,
    );
  }

  Widget builderApp(context, dynamic child) {
    return ResponsiveWrapper.builder(
      ClampingScrollWrapper.builder(context, child!),
      breakpoints: const [
        ResponsiveBreakpoint.resize(480, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
      ],
    );
  }
}
