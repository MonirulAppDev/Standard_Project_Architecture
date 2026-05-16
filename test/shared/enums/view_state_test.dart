import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/shared/enums/view_state.dart';

void main() {
  test('ViewState enum should have all expected values', () {
    expect(ViewState.values, contains(ViewState.initial));
    expect(ViewState.values, contains(ViewState.loading));
    expect(ViewState.values, contains(ViewState.loaded));
    expect(ViewState.values, contains(ViewState.error));
    expect(ViewState.values, contains(ViewState.empty));
  });
}
