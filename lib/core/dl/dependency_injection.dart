import 'package:api/api/data/remote/data_sources/data_source.dart';
import 'package:api/api/data/repositories/repo_impl.dart';
import 'package:api/api/domain/repositories/repo.dart';
import 'package:api/api/presentation/manager/api_cubit.dart';
import 'package:api/core/network/services/services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerLazySingleton<Services>(() => Services(createAndSetupDio()));
  getIt.registerLazySingleton<DataSource>(() => RemoteDataSource(getIt()));
  getIt.registerLazySingleton<Repo>(() => RepoImpl(getIt()));
  getIt.registerFactory<ApiCubit>(() => ApiCubit(getIt()));

}
Dio createAndSetupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = const Duration(seconds: 200)
    ..options.receiveTimeout = const Duration(seconds: 200);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));

  return dio;
}
