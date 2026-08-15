import 'package:doc_appointments_app/core/di/debendency_injection.dart';
import 'package:doc_appointments_app/core/routing/app_router.dart';
import 'package:doc_appointments_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
