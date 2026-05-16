import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spa_v2/features/auth/data/models/login_request_model.dart';
import 'package:spa_v2/features/auth/domain/entities/user_entity.dart';
import 'package:spa_v2/features/auth/domain/repositories/auth_repository.dart';
import 'package:spa_v2/features/auth/domain/usecases/login_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late LoginUseCase useCase;
  late MockAuthRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthRepository();
    useCase = LoginUseCase(mockRepository);
  });

  final tLoginRequest = LoginRequestModel(email: 'test@test.com', password: 'password');
  const tUserEntity = UserEntity(id: '1', email: 'test@test.com', name: 'Test User');

  test('should call login on the repository', () async {
    // arrange
    when(() => mockRepository.login(any()))
        .thenAnswer((_) async => tUserEntity);

    // act
    final result = await useCase(tLoginRequest);

    // assert
    expect(result, tUserEntity);
    verify(() => mockRepository.login(tLoginRequest)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });
}
