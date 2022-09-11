// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:getx_clean/domain/usecases/login_usecase.dart';

class HomeController extends GetxController {
  HomeController(this.loginUseCase);

  final LoginUseCase loginUseCase;
  late RxString username = ''.obs;

  fetchData() async {
    final data = await loginUseCase.execute(
      LoginParams(username: 'mor_2314', password: "83r5^_"),
    );

    // pass data
    username.value = data.username;
  }
}
