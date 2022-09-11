import 'package:getx_clean/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> friends(UserEntity params);
}
