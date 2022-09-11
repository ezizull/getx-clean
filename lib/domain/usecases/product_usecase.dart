import 'package:getx_clean/app/utils/util_usecase/util_usecase.dart';
import 'package:getx_clean/domain/entities/product_entity.dart';
import 'package:getx_clean/domain/repositories/product_repository.dart';

class ProductUseCase extends UseCase<dynamic, dynamic> {
  final ProductRepository productRepository;
  ProductUseCase(this.productRepository);

  @override
  Future<List<ProductEntity>> execute(params) async {
    if (!await hasInternetConnection) {
      // return
    }

    return productRepository.fetchProducts();
  }
}

class ProductParams {
  String id;
  ProductParams({required this.id});
}
