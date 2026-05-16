import 'package:spa_v2/core/base/base_usecase.dart';
import 'package:spa_v2/features/auth/domain/entities/user_entity.dart';
import 'package:spa_v2/features/auth/domain/repositories/auth_repository.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';

class LoginUseCase implements BaseUseCase<UserEntity, LoginRequestModel> {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  @override
  Future<UserEntity> call(LoginRequestModel params) async {
    return await repository.login(params);
  }
}
