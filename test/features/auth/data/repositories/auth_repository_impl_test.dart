import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';
import 'package:spa_v2/features/auth/data/models/user_model.dart';
import 'package:spa_v2/features/auth/data/repositories/auth_repository_impl.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}
class MockAuthLocalDataSource extends Mock implements AuthLocalDataSource {}

void main() {
  late AuthRepositoryImpl repository;
  late MockAuthRemoteDataSource mockRemoteDataSource;
  late MockAuthLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockAuthRemoteDataSource();
    mockLocalDataSource = MockAuthLocalDataSource();
    repository = AuthRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );
  });

  const tUserModel = UserModel(id: '1', email: 'test@test.com', name: 'Test User');
  final tLoginRequest = LoginRequestModel(email: 'test@test.com', password: 'password');

  group('login', () {
    test('should return remote data when the call to remote data source is successful', () async {
      // arrange
      when(() => mockRemoteDataSource.login(any()))
          .thenAnswer((_) async => tUserModel);

      // act
      final result = await repository.login(tLoginRequest);

      // assert
      verify(() => mockRemoteDataSource.login(tLoginRequest));
      expect(result, equals(tUserModel));
    });
  });

  group('logout', () {
    test('should call localDataSource.clear()', () async {
      // arrange
      when(() => mockLocalDataSource.clear()).thenAnswer((_) async => {});

      // act
      await repository.logout();

      // assert
      verify(() => mockLocalDataSource.clear());
    });
  });
}
