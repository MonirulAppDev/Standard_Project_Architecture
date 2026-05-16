import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/core/utils/helpers.dart';

void main() {
  test('Helpers placeholder test', () {
    final helpers = Helpers();
    expect(helpers, isNotNull);
  });
}
