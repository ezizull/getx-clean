import 'package:connectivity_plus/connectivity_plus.dart';

abstract class UseCase<Type, Params> {
  Future<bool> get hasInternetConnection async =>
      await Connectivity().checkConnectivity() != ConnectivityResult.none;

  Future<Type> execute(Params params);
}

abstract class NoParam<Type> {
  Future<Type> execute();
}
