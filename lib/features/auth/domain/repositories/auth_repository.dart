import 'package:spa_v2/features/auth/domain/entities/user_entity.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';

abstract class AuthRepository {
  Future<UserEntity> login(LoginRequestModel params);
  Future<UserEntity> register(Map<String, dynamic> params);
  Future<void> logout();
}
