import 'package:dio/dio.dart';
import 'package:doc_appointments_app/core/helpers/shared_pref_helper.dart';
import 'package:doc_appointments_app/core/networking/dio_factory.dart';

Future<void> saveTokenAfterLogin({
  required String key,
  required String token,
}) async {
  await SharedPrefHelper.setData(key, token);
  DioFactory.setTokenIntoHeaderAfterLogin(token);
}
