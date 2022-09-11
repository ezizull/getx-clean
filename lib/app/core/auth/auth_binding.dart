import 'package:get/get.dart';
import 'package:getx_clean/app/core/auth/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put same as required
    Get.put(() => AuthController());
  }
}
