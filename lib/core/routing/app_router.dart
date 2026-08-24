import 'package:dio/dio.dart';
import 'package:doc_appointments_app/core/di/debendency_injection.dart';
import 'package:doc_appointments_app/core/helpers/app_constans.dart';
import 'package:doc_appointments_app/core/helpers/shared_pref_helper.dart';
import 'package:doc_appointments_app/core/networking/api_service.dart';
import 'package:doc_appointments_app/core/networking/dio_factory.dart';
import 'package:doc_appointments_app/core/routing/routes.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointments_app/features/home/repos/home_repo_impl.dart';
import 'package:doc_appointments_app/features/home/ui/home_screen.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointments_app/features/login/ui/login_screen.dart';
import 'package:doc_appointments_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:doc_appointments_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_appointments_app/features/sign_up/ui/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.get<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) =>
                HomeCubit(homeRepoImpl: getIt())..getDoctorsSpecializations(),
            child: HomeScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt.get<SignUpCubit>(),
            child: SignUpView(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
