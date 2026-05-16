import 'package:spa_v2/features/auth/data/models/user_model.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(LoginRequestModel params);
  Future<UserModel> register(Map<String, dynamic> params);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel> login(LoginRequestModel params) async {
    // Implementation here
    throw UnimplementedError();
  }

  @override
  Future<UserModel> register(Map<String, dynamic> params) async {
    // Implementation here
    throw UnimplementedError();
  }
}
