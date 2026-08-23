import 'package:doc_appointments_app/core/helpers/app_constans.dart';
import 'package:doc_appointments_app/core/routing/app_router.dart';
import 'package:doc_appointments_app/core/routing/routes.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorManager.primaryColorBlue,
          // brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.white,
        ),

        initialRoute: isUserLogedIn
            ? Routes.homeScreen
            : Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
