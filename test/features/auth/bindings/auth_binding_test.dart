import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/app/di/injection.dart';
import 'package:spa_v2/features/auth/bindings/auth_binding.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:spa_v2/features/auth/domain/repositories/auth_repository.dart';
import 'package:spa_v2/features/auth/presentation/providers/auth_provider.dart';

void main() {
  test('AuthBinding.init should register all auth dependencies', () {
    // We need to ensure GetIt is ready
    getIt.reset();
    
    AuthBinding.init();

    expect(getIt.isRegistered<AuthRemoteDataSource>(), isTrue);
    expect(getIt.isRegistered<AuthRepository>(), isTrue);
    expect(getIt.isRegistered<AuthProvider>(), isTrue);
  });
}
