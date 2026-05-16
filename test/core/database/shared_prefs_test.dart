import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/database/shared_prefs.dart';

void main() {
  test('SharedPrefs placeholder test', () {
    final prefs = SharedPrefs();
    expect(prefs, isNotNull);
  });
}
