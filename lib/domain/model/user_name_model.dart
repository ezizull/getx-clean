// Project imports:
import 'package:getx_clean/domain/entities/user_name_entity.dart';

class UserNameModel extends UserNameEntity {
  UserNameModel.fromJson(Map<String, dynamic> json)
      : super(
          firstname: json["firstname"],
          lastname: json["lastname"],
        );
}
