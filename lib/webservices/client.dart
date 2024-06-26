import 'package:dio/dio.dart';
import 'package:kara_test/webservices/webservices.dart';

class Client {
  static WebServices? _instance;
  static WebServices? getClient() {
    if (_instance == null) {
      Dio _dio = Dio(
        BaseOptions(
          connectTimeout: 5000,
          receiveTimeout: 5000,
        ),
      );
      _dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) {
            print(
                'url:${options.uri} \n headers: ${options.headers} \n data: ${options.data}');
            handler.next(options);
          },
          onResponse: (e, handler) {
            print('response: code: ${e.statusCode} data: ${e.data}');
            handler.next(e);
          },
          onError: (e, handler) {
            print(
                'error: status code = ${e.response?.statusCode} message: ${e.response?.data}');
            handler.next(e);
          },
        ),
      );
      _instance = WebServices(_dio);
    }
    return _instance;
  }
}
