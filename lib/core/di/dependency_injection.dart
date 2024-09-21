import 'package:dio/dio.dart';
import 'package:flutter_advance_elgamal/core/networking/api_service.dart';
import 'package:flutter_advance_elgamal/core/networking/dio_factory.dart';
import 'package:flutter_advance_elgamal/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advance_elgamal/features/sign_up/data/repository/sign_up_repository.dart';
import 'package:flutter_advance_elgamal/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repository/login_repo.dart';

final getIt = GetIt.instance;

// set up get it
Future<void> setUpGetIt() async {
  /// Dio & ApiService setup
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  /// login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  /// sign up
  getIt.registerLazySingleton<SignUpRepository>(() => SignUpRepository(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

}