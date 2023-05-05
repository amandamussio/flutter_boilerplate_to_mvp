import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_to_mvp/core/domain/services/http_services.dart';

class DioHttpServiceImp implements HttpService {

  late Dio _dio;

  DioHttpServiceImp() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com/',
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'authorization': 'Bearer token',
        },
      ),
    );
  }

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}
