import 'package:spa_v2/features/auth/domain/entities/user_entity.dart';
import 'package:spa_v2/features/auth/domain/repositories/auth_repository.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<UserEntity> login(LoginRequestModel params) async {
    return await remoteDataSource.login(params);
  }

  @override
  Future<UserEntity> register(Map<String, dynamic> params) async {
    return await remoteDataSource.register(params);
  }

  @override
  Future<void> logout() async {
    await localDataSource.clear();
  }
}
