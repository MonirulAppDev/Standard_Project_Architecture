import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spa_v2/features/auth/domain/entities/user_entity.dart';
import 'package:spa_v2/features/auth/domain/repositories/auth_repository.dart';
import 'package:spa_v2/features/auth/domain/usecases/register_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late RegisterUseCase useCase;
  late MockAuthRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthRepository();
    useCase = RegisterUseCase(mockRepository);
  });

  final tParams = {'email': 'test@test.com', 'password': 'password', 'name': 'Test'};
  const tUserEntity = UserEntity(id: '1', email: 'test@test.com', name: 'Test');

  test('should call register on the repository', () async {
    // arrange
    when(() => mockRepository.register(any()))
        .thenAnswer((_) async => tUserEntity);

    // act
    final result = await useCase(tParams);

    // assert
    expect(result, tUserEntity);
    verify(() => mockRepository.register(tParams)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });
}
