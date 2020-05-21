import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:wc3_lobbies_flutter/api/api_service.dart';
import 'package:wc3_lobbies_flutter/store/home_store.dart';

/// Injector singleton
final GetIt getIt = GetIt.instance;

/// Setup injectables
Future<void> initInjectables() async {
  final Dio dio = Dio();
  dio.options.headers['Referer'] = 'http://wc3maps.com/live';

  // APIService
  getIt.registerLazySingleton(() => APIService(dio));
  getIt.registerFactory(
    () => HomeStore(getIt<APIService>()),
  );
}
