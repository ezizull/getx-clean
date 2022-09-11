// ignore_for_file: prefer_typing_uninitialized_variables

// Dart imports:
import 'dart:async';
import 'dart:io';

// Package imports:
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart' as getx;

// Project imports:
import 'package:getx_clean/app/utils/util_api/api_exception.dart';
import 'package:getx_clean/app/utils/util_api/api_request.dart';

class DioProvider {
  static final authDio = dio.Dio();

  static Future request(APIRequest request) async {
    try {
      final response = await authDio.request(
        request.url,
        data: request.body,
        options: dio.Options(
          method: request.method.string,
          headers: request.headers,
          extra: request.query,
        ),
      );

      return result(response);
    } on TimeoutException catch (_) {
      throw TimeOutException(null);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  // handling error
  static dynamic result(dio.Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.data.toString());
      case 404:
        throw BadRequestException('Not found');
      case 500:
        throw FetchDataException('Internal Server Error');
      default:
        throw FetchDataException('Error Communication with Server : ${response.statusCode}');
    }
  }
}

class GetProvider {
  static final authGet = getx.GetConnect();

  static Future request(APIRequest request) async {
    try {
      final response = await authGet.request(
        request.url,
        request.method.string,
        headers: request.headers,
        query: request.query,
        body: request.body,
      );

      return result(response);
    } on TimeoutException catch (_) {
      throw TimeOutException(null);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  // handling error
  static dynamic result(getx.Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        return response.body;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw BadRequestException('Not found');
      case 500:
        throw FetchDataException('Internal Server Error');
      default:
        throw FetchDataException('Error Communication with Server : ${response.statusCode}');
    }
  }
}
