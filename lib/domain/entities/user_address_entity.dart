import 'package:getx_clean/domain/entities/user_geoloc_enitity.dart';

class UserAddressEntity {
  UserAddressEntity({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  final UserGeolocEntity geolocation;
  final String city;
  final String street;
  final int number;
  final String zipcode;
}
