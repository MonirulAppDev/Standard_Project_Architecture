import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spa_v2/features/auth/domain/entities/user_entity.dart';
import 'package:spa_v2/features/auth/domain/usecases/login_usecase.dart';
import 'package:spa_v2/features/auth/presentation/providers/auth_provider.dart';
import 'package:spa_v2/features/auth/presentation/states/auth_state.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}

void main() {
  late AuthProvider provider;
  late MockLoginUseCase mockLoginUseCase;

  setUp(() {
    mockLoginUseCase = MockLoginUseCase();
    provider = AuthProvider(mockLoginUseCase);
  });

  setUpAll(() {
    registerFallbackValue(LoginRequestModel(email: '', password: ''));
  });

  const tUserEntity = UserEntity(id: '1', email: 'test@test.com', name: 'Test User');

  test('initial state should be AuthInitial', () {
    expect(provider.state, isA<AuthInitial>());
  });

  test('should emit [AuthLoading, AuthAuthenticated] when login is successful', () async {
    // arrange
    when(() => mockLoginUseCase(any())).thenAnswer((_) async => tUserEntity);

    // act
    final future = provider.login('test@test.com', 'password');

    // assert
    expect(provider.state, isA<AuthLoading>());
    await future;
    expect(provider.state, isA<AuthAuthenticated>());
    final authenticatedState = provider.state as AuthAuthenticated;
    expect(authenticatedState.user, tUserEntity);
  });

  test('should emit [AuthLoading, AuthError] when login fails', () async {
    // arrange
    when(() => mockLoginUseCase(any())).thenThrow(Exception('Login Failed'));

    // act
    final future = provider.login('test@test.com', 'password');

    // assert
    expect(provider.state, isA<AuthLoading>());
    await future;
    expect(provider.state, isA<AuthError>());
    final errorState = provider.state as AuthError;
    expect(errorState.message, contains('Login Failed'));
  });
}
