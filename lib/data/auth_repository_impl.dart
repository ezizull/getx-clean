// ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls

import 'package:getx_clean/app/config/constant_config.dart';
import 'package:getx_clean/app/utils/util_api/api_provider.dart';
import 'package:getx_clean/app/utils/util_api/api_request.dart';
import 'package:getx_clean/domain/entities/user_entity.dart';
import 'package:getx_clean/domain/model/user_model.dart';
import 'package:getx_clean/domain/repositories/auth_repository.dart';
import 'package:getx_clean/domain/usecases/login_usecase.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<UserEntity> login(LoginParams params) async {
    final API = APIRequest(url: usersURL, method: Request.get, body: null);

    final response = await GetProvider.request(API) as List<dynamic>;

    late dynamic data;

    response.forEach((e) {
      if (e['username'] == params.username && e['password'] == params.password) data = e;
    });

    // debugPrint(data.toString());

    return UserModel.fromJson((data));
  }
}
