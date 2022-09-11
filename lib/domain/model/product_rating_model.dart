import 'package:getx_clean/domain/entities/product_rating_entity.dart';

class ProductRatingModel extends ProductRatingEntity {
  ProductRatingModel.fromJson(Map<String, dynamic> json)
      : super(
          rate: json["rate"].toDouble(),
          count: json["count"],
        );
}
