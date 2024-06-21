import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;

  ApiServices(
      this.dio,
      );

  Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(
      url,
      queryParameters: query,
      options: Options(
        validateStatus: (_) => true,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? authToken,
  }) async {
    Options options = Options(
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      validateStatus: (_) => true,
      receiveDataWhenStatusError: true,
    );
    var result = await dio.post(
      url,
      queryParameters: query,
      data: data,
      options: options,
    );
    return result;
  }

  Future<Response> putData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String? authToken,
  }) async {
    Options options = Options(headers: {
      'Authorization': 'Bearer $authToken',
    },
        validateStatus: (_) => true,
    receiveDataWhenStatusError: true,);
    return await dio.put(url,
        queryParameters: query, data: data, options: options);
  }
}
