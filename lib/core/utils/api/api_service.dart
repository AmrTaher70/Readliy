import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
      var response = await _dio.get('$_baseUrl$endPoint');
      return response.data;
    } catch (e) {
      throw DioException(
          requestOptions: RequestOptions(path: endPoint),
          response: Response(
              requestOptions: RequestOptions(path: endPoint),
              data: {'message': 'Failed to fetch data from the API'},
              statusCode: 500));
    }
  }
}
