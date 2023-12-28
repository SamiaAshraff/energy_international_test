import 'package:dio/dio.dart';
import 'package:energy_test/logic/constants/api_constants.dart';

class ApiClient {
  Dio get client {
    Dio _dio = Dio();
    _dio.interceptors.add(ApiInterceptors());
    _dio.options.baseUrl = APIConstants.testBaseUrl;
    return _dio;
  }
}

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // if (options.path.contains(APIConstants.testLoginUserUrl) ||
    //     options.path.contains(APIConstants.testRegisterUserUrl)) {
    //   handler.next(options);
    //   return;
    // }
    // final token = await getIt<ISecureStorage>()
    //     .getStringValue(StorageConstants.loginTokenKey);

    // options.headers['content-type'] = 'application/json';
    // options.headers["authorization"] =
    //     "${token.getOrElse(() => throw NotAuthenticatedError())}";

    // handler.resolve(response);
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    // return super.onResponse(response, handler);
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    return super.onError(err, handler);
  }
}
