import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/auth/data/models/user_model.dart';
import 'package:spa_v2/features/auth/domain/entities/user_entity.dart';

void main() {
  const tUserModel = UserModel(
    id: '1',
    email: 'test@example.com',
    name: 'Test User',
  );

  test('should be a subclass of UserEntity', () {
    expect(tUserModel, isA<UserEntity>());
  });

  group('fromJson', () {
    test('should return a valid model from JSON', () {
      // arrange
      final Map<String, dynamic> jsonMap = {
        'id': '1',
        'email': 'test@example.com',
        'name': 'Test User',
      };

      // act
      final result = UserModel.fromJson(jsonMap);

      // assert
      expect(result, tUserModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing the proper data', () {
      // act
      final result = tUserModel.toJson();

      // assert
      final expectedMap = {
        'id': '1',
        'email': 'test@example.com',
        'name': 'Test User',
      };
      expect(result, expectedMap);
    });
  });
}
