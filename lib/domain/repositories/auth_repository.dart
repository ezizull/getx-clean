import 'package:getx_clean/domain/entities/user_entity.dart';
import 'package:getx_clean/domain/usecases/login_usecase.dart';

abstract class AuthRepository {
  Future<UserEntity> login(LoginParams params);
}
