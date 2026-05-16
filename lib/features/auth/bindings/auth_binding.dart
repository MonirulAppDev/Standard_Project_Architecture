import 'package:spa_v2/app/di/injection.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:spa_v2/features/auth/domain/repositories/auth_repository.dart';
import 'package:spa_v2/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:spa_v2/features/auth/domain/usecases/login_usecase.dart';
import 'package:spa_v2/features/auth/presentation/providers/auth_provider.dart';

class AuthBinding {
  static void init() {
    getIt.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl());
    getIt.registerLazySingleton<AuthLocalDataSource>(() => AuthLocalDataSourceImpl());
    getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
          remoteDataSource: getIt(),
          localDataSource: getIt(),
        ));
    getIt.registerLazySingleton(() => LoginUseCase(getIt()));
    getIt.registerFactory(() => AuthProvider(getIt()));
  }
}
