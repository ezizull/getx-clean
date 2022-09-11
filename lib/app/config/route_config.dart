// Flutter imports:
import 'package:flutter/animation.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:getx_clean/app/utils/transitions.dart';
import 'package:getx_clean/presentation/screen/home/home_binding.dart';
import 'package:getx_clean/presentation/screen/home/home_screen.dart';
import 'package:getx_clean/presentation/screen/product/product_binding.dart';
import 'package:getx_clean/presentation/screen/product/product_screen.dart';

class AppRoute {
  // custom as you want
  static final pages = [
    //  customTransition
    GetPage(
      name: RouteName.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      middlewares: [],
      customTransition: AppTrans.slide(),
      transitionDuration: const Duration(milliseconds: 400),
    ),

    GetPage(
      name: RouteName.productScreen,
      page: () => const ProductScreen(),
      binding: ProductBinding(),
      middlewares: [],
      customTransition: AppTrans.slide(),
      curve: Curves.easeInToLinear,
      transitionDuration: const Duration(milliseconds: 400),
    ),

    // Transition
    GetPage(
      name: RouteName.loadScreen,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      middlewares: [],
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}

abstract class RouteName {
  static const loadScreen = '/';

  static const loginScreen = '/login';
  static const homeScreen = '/home';
  static const signupScreen = '/signup';

  static const productScreen = '/product';
}
