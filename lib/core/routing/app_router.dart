import 'package:doc_appointments_app/core/di/debendency_injection.dart';
import 'package:doc_appointments_app/core/routing/routes.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointments_app/features/home/ui/home_screen.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointments_app/features/login/ui/login_screen.dart';
import 'package:doc_appointments_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:doc_appointments_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_appointments_app/features/sign_up/ui/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
