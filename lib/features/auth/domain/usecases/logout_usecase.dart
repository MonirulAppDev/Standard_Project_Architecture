import 'package:spa_v2/core/base/base_usecase.dart';
import 'package:spa_v2/features/auth/domain/repositories/auth_repository.dart';

class LogoutUseCase implements BaseUseCase<void, void> {
  final AuthRepository repository;

  LogoutUseCase(this.repository);

  @override
  Future<void> call(void params) async {
    return await repository.logout();
  }
}
