// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get_storage/get_storage.dart';

// Project imports:
import 'package:getx_clean/presentation/main_app.dart';

void main() async {
  await GetStorage.init();

  runApp(const MainApp());
}
