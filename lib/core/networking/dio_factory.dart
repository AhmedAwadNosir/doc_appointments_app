import 'package:dio/dio.dart';
import 'package:doc_appointments_app/core/helpers/app_constans.dart';
import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/helpers/shared_pref_helper.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// Private constructor to prevent instantiation
  DioFactory._();

  static Dio? _dio;

  static const Duration _timeout = Duration(seconds: 30);

  static Dio getDio() {
    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.connectTimeout = _timeout
        ..options.receiveTimeout = _timeout;

      _addDioHeaders();
      _addDioInterceptors();
    }
    return _dio!;
  }

  static void _addDioHeaders() {
    _dio?.options.headers = {'Accept': 'application/json'};
  }

  static void _addDioInterceptors() {
    _dio?.interceptors.addAll([
      // Interceptor to inject the auth token dynamically before every request
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final String? userToken = await SharedPrefHelper.getSecuredString(
            AppConstans.userToken,
          );

          if (!userToken.isNullOrEmpty()) {
            options.headers['Authorization'] = 'Bearer $userToken';
          }

          return handler.next(options);
        },
      ),

      // Logger interceptor
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    ]);
  }

  /// Sets the token directly into the headers when updated in memory
  static void setTokenIntoHeaderAfterLogin(String token) {
    _dio?.options.headers['Authorization'] = 'Bearer $token';
  }
}
