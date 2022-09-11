import 'package:getx_clean/domain/entities/user_geoloc_enitity.dart';

class UserGelocModel extends UserGeolocEntity {
  UserGelocModel.fromJson(Map<String, dynamic> json)
      : super(
          lat: json["lat"],
          long: json["long"],
        );
}
