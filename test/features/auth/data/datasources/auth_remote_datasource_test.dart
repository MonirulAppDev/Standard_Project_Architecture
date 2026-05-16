import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';
import 'package:spa_v2/features/auth/data/models/user_model.dart';

// Since the implementation currently throws UnimplementedError, 
// these tests will verify that behavior or provide a template for when it's implemented.

void main() {
  late AuthRemoteDataSourceImpl dataSource;

  setUp(() {
    dataSource = AuthRemoteDataSourceImpl();
  });

  group('login', () {
    final tLoginRequest = LoginRequestModel(email: 'test@test.com', password: 'password');

    test('should throw UnimplementedError when login is called', () async {
      expect(() => dataSource.login(tLoginRequest), throwsA(isA<UnimplementedError>()));
    });
  });

  group('register', () {
    final tParams = {'email': 'test@test.com', 'password': 'password'};

    test('should throw UnimplementedError when register is called', () async {
      expect(() => dataSource.register(tParams), throwsA(isA<UnimplementedError>()));
    });
  });
}
