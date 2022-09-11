// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:getx_clean/app/config/color_config.dart';
import 'package:getx_clean/app/config/text_config.dart';
import 'package:getx_clean/presentation/screen/product/product_controller.dart';

class ProductScreen extends GetView<ProductController> {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: Text('Product Screen', style: AppFont.poppins),
      ),
    );
  }
}
