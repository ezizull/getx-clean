// Project imports:
import 'package:getx_clean/domain/entities/product_entity.dart';
import 'package:getx_clean/domain/model/product_category_model.dart';
import 'package:getx_clean/domain/model/product_rating_model.dart';

class ProductModel extends ProductEntity {
  ProductModel.fromJson(Map<String, dynamic> json)
      : super(
          id: json["id"],
          title: json["title"],
          price: json["price"].toDouble(),
          description: json["description"],
          category: ProductCategoryValue.map![json["category"]]!,
          image: json["image"],
          rating: ProductRatingModel.fromJson(json["rating"]),
        );
}
