import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/database/hive_service.dart';

void main() {
  late HiveService hiveService;

  setUp(() {
    hiveService = HiveService();
  });

  test('init should complete', () async {
    expect(hiveService.init(), completes);
  });
}
