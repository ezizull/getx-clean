// ignore_for_file: non_constant_identifier_names

// Project imports:
import 'package:getx_clean/domain/entities/product_entity.dart';

final ProductCategoryValue = EnumValues({
  "electronics": ProductCategory.ELECTRONICS,
  "jewelery": ProductCategory.JEWELERY,
  "men's clothing": ProductCategory.MEN_S_CLOTHING,
  "women's clothing": ProductCategory.WOMEN_S_CLOTHING
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map!.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}
