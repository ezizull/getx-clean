import 'package:getx_clean/domain/entities/user_address_entity.dart';
import 'package:getx_clean/domain/model/user_geoloc_model.dart';

class UserAddressModel extends UserAddressEntity {
  UserAddressModel.fromJson(Map<String, dynamic> json)
      : super(
          geolocation: UserGelocModel.fromJson(json["geolocation"]),
          city: json["city"],
          street: json["street"],
          number: json["number"],
          zipcode: json["zipcode"],
        );
}
