// Project imports:
import 'package:getx_clean/domain/entities/product_rating_entity.dart';

class ProductEntity {
  ProductEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  final int id;
  final String title;
  final double price;
  final String description;
  final ProductCategory category;
  final String image;
  final ProductRatingEntity rating;
}

enum ProductCategory { MEN_S_CLOTHING, JEWELERY, ELECTRONICS, WOMEN_S_CLOTHING }
