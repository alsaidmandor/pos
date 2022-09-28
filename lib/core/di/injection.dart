import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../cubit/cubit.dart';
import '../network/local/cache_helper.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Number Trivia
  // Bloc

  sl.registerFactory(
    () => AppBloc(),
  );

  // Core
  sl.registerLazySingleton<CacheHelper>(
    () => CacheImpl(
      sl(),
    ),
  );

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
