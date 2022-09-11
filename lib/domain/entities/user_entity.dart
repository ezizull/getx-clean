import 'package:getx_clean/domain/entities/user_address_entity.dart';
import 'package:getx_clean/domain/entities/user_name_entity.dart';

class UserEntity {
  UserEntity({
    required this.address,
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.phone,
    required this.v,
  });

  final UserAddressEntity address;
  final int id;
  final String email;
  final String username;
  final String password;
  final UserNameEntity name;
  final String phone;
  final int v;
}
