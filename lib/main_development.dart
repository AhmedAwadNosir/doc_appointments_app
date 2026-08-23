import 'package:doc_appointments_app/core/di/debendency_injection.dart';
import 'package:doc_appointments_app/core/functions/check_if_user_loged_in.dart';
import 'package:doc_appointments_app/core/helpers/app_constans.dart';
import 'package:doc_appointments_app/core/routing/app_router.dart';
import 'package:doc_appointments_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkIfLoggedInUser();
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
