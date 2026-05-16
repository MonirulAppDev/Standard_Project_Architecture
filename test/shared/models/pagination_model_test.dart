import 'package:flutter_test/flutter_test.dart';
import 'package:spa_v2/shared/models/pagination_model.dart';

void main() {
  test('PaginationModel should hold items and metadata', () {
    final items = ['item1', 'item2'];
    final model = PaginationModel<String>(
      items: items,
      totalCount: 10,
      page: 1,
    );

    expect(model.items, items);
    expect(model.totalCount, 10);
    expect(model.page, 1);
  });
}
