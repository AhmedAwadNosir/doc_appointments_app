import 'package:dio/dio.dart';
import 'package:doc_appointments_app/core/networking/api_service.dart';
import 'package:doc_appointments_app/core/networking/dio_factory.dart';
import 'package:doc_appointments_app/features/login/data/repos/login_repo.dart';
import 'package:doc_appointments_app/features/login/data/repos/login_repo_impl.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointments_app/features/sign_up/data/repos/sign_up_repo_impl.dart';
import 'package:doc_appointments_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final Dio dio = DioFactory.getDio();
  //dio and apiService
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //loginRepoImpl apiService
  getIt.registerLazySingleton<LoginRepoImpl>(
    () => LoginRepoImpl(apiService: getIt()),
  );
  //loginCubit loginRepoImpl
  // we use factory to create instant of cubit every time i use so i can use controler
  //in it when it dispose only with cubit and still block make cubit lazy so no problem

  getIt.registerFactory<LoginCubit>(() => LoginCubit(loginRepoImpl: getIt()));
  //loginRepoImpl apiService
  getIt.registerLazySingleton<SignUpRepoImpl>(
    () => SignUpRepoImpl(apiService: getIt()),
  );
  //loginCubit loginRepoImpl
  getIt.registerFactory<SignUpCubit>(
    () => SignUpCubit(signUpRepoImpl: getIt()),
  );
}
