import 'dart:convert';

import 'package:dio/dio.dart';

class DioHttp {
  late Dio _client;

  DioHttp() {
    _client = Dio(BaseOptions(
        baseUrl: 'https://www.dmoe.cc',
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 10),
        extra: {}));

    
    _client.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) {
        var token = '1111';
        if (token != null) {
          options.headers['Authorization'] = 'Bearse $token';
        }
        print('${options}- -- ${handler}');
        return handler.next(options);
      },

      onResponse:(response, handler) {
        print('响应${response}');
        return handler.resolve(response);
      } ,
    ));
  }

  Future<Response<Map<String, dynamic>>> get(String path,
      [Map<String, dynamic>? params, String? token]) async {
    return await _client.get(path, queryParameters: params);
  }

  Future<Response<Map<String, dynamic>>> post(String path,
      [Map<String, dynamic>? params, String? token]) async {
    return await _client.post(path, data: params);
  }

  Future<Response<Map<String, dynamic>>> postForm(String path,
      [Map<String, dynamic>? params, String? token]) async {
        var _params = jsonDecode(params.toString());
        final formData = FormData.fromMap({..._params});
    return await _client.post(path, data: formData);
  }
}
