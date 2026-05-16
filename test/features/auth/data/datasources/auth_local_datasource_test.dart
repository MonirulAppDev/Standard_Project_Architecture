import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/features/auth/data/datasources/auth_local_datasource.dart';

void main() {
  late AuthLocalDataSourceImpl dataSource;

  setUp(() {
    dataSource = AuthLocalDataSourceImpl();
  });

  group('AuthLocalDataSource', () {
    test('saveToken should complete successfully', () async {
      expect(dataSource.saveToken('token'), completes);
    });

    test('getToken should return null by default', () async {
      final token = await dataSource.getToken();
      expect(token, isNull);
    });

    test('clear should complete successfully', () async {
      expect(dataSource.clear(), completes);
    });
  });
}
