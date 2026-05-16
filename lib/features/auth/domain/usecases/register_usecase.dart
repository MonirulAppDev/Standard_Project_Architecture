import 'package:spa_v2/core/base/base_usecase.dart';
import 'package:spa_v2/features/auth/domain/entities/user_entity.dart';
import 'package:spa_v2/features/auth/domain/repositories/auth_repository.dart';

class RegisterUseCase implements BaseUseCase<UserEntity, Map<String, dynamic>> {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  @override
  Future<UserEntity> call(Map<String, dynamic> params) async {
    return await repository.register(params);
  }
}
