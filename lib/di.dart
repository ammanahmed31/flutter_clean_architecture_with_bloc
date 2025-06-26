import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'core/network/api_service/api_service.dart';
import 'core/network/dio_service.dart';
import 'core/network/endpoints/api_endpoints.dart';
import 'core/network/interceptors/api_interceptor.dart';
import 'core/network/interceptors/logging_interceptor.dart';
import 'core/network/interceptors/refresh_token_interceptor.dart';
import 'features/example_feature/data/datasources/item_remote_data_source.dart';
import 'features/example_feature/data/repositories/item_repository_impl.dart';
import 'features/example_feature/domain/repositories/item_repository.dart';
import 'features/example_feature/domain/usecases/get_items_usecase.dart';
import 'features/example_feature/presentation/bloc/item_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core & Network

  /// Register Dio as a singleton
  sl.registerLazySingleton<Dio>(() {
    final baseOptions = BaseOptions(baseUrl: ApiEndpoint.baseUrl);
    return Dio(baseOptions);
  });

  /// Register Dio Service as a singleton
  sl.registerLazySingleton<DioService>(() {
    final cacheOptions = CacheOptions(policy: CachePolicy.noCache, maxStale: const Duration(days: 30), store: MemCacheStore());
    return DioService(
      dioClient: sl<Dio>(),
      globalCacheOptions: cacheOptions,
      interceptors: [ApiInterceptor(), DioCacheInterceptor(options: cacheOptions), if (kDebugMode) LoggingInterceptor(), RefreshTokenInterceptor(dioClient: sl<Dio>())],
    );
  });

  /// Register API Service as a singleton
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<DioService>()));

  // Data sources
  sl.registerLazySingleton<ItemRemoteDataSource>(() => ItemRemoteDataSourceImpl(apiService: sl<ApiService>()));

  // Repository
  sl.registerLazySingleton<ItemRepository>(() => ItemRepositoryImpl(remoteDataSource: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetItemsUseCase(sl()));

  // Bloc
  sl.registerFactory(() => ItemBloc(getItemsUseCase: sl()));
}
