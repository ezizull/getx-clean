// Project imports:
import 'package:getx_clean/domain/entities/user_entity.dart';
import 'package:getx_clean/domain/model/user_address_model.dart';
import 'package:getx_clean/domain/model/user_name_model.dart';

class UserModel extends UserEntity {
  UserModel.fromJson(Map<String, dynamic> json)
      : super(
          address: UserAddressModel.fromJson(json["address"]),
          id: json["id"],
          email: json["email"],
          username: json["username"],
          password: json["password"],
          name: UserNameModel.fromJson(json["name"]),
          phone: json["phone"],
          v: json["__v"],
        );
}
