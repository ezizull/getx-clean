import 'package:getx_clean/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> fetchProducts();
}
