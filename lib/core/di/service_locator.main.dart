part of 'service_locator.dart';

final sl = GetIt.instance;

// Init core dependencies
// Future<void> initCoreDependencies() async {
//   final prefs = await SharedPreferences.getInstance();
//   sl
//     ..registerLazySingleton(() => DioClient()..initSession())
//     ..registerLazySingleton(() => SharedPrefsService(prefs: prefs))
//     ..registerLazySingleton(() => LocatorService())
//     ..registerLazySingleton(() => LocalNotificationsService())
//     ..registerLazySingleton(() => SocketService())
//     ..registerLazySingleton(() => LanguageBloc());
// }

Future<void> initFeatureDependencies() async {
  // Common
  _common();
}

// Common
void _common() {
  sl.registerFactory(() => DialogObserverBloc());
}

// Reset DI
Future<void> resetDi() async {
  await sl.reset();
  // await initCoreDependencies();
  await initFeatureDependencies();
  await sl.allReady();
}
