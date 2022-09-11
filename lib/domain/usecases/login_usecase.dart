import 'package:getx_clean/app/utils/util_usecase/util_usecase.dart';
import 'package:getx_clean/domain/entities/user_entity.dart';
import 'package:getx_clean/domain/repositories/auth_repository.dart';

class LoginUseCase extends UseCase<dynamic, LoginParams> {
  final AuthRepository authRepository;
  LoginUseCase(this.authRepository);

  @override
  Future<UserEntity> execute(LoginParams params) async {
    if (!await hasInternetConnection) {
      // return
    }

    return authRepository.login(params);
  }
}

class LoginParams {
  final String username;
  final String password;

  LoginParams({required this.username, required this.password});
}
