import 'package:dio/dio.dart';
import 'package:flutter_advance_elgamal/core/networking/api_service.dart';
import 'package:flutter_advance_elgamal/core/networking/dio_factory.dart';
import 'package:flutter_advance_elgamal/features/login/logic/cubit/login_cubit.dart';
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
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  /// Home

}