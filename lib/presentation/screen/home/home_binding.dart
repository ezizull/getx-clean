import 'package:get/get.dart';
import 'package:getx_clean/app/core/auth/auth_controller.dart';
import 'package:getx_clean/data/auth_repository_impl.dart';
import 'package:getx_clean/domain/usecases/login_usecase.dart';
import 'package:getx_clean/presentation/screen/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Get.put same as required
    Get.put(AuthController());
    Get.lazyPut(() => AuthRepositoryImpl());

    // Get.lazyput active only when used
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));

    Get.lazyPut(() => LoginUseCase(Get.find<AuthRepositoryImpl>()));
  }
}
