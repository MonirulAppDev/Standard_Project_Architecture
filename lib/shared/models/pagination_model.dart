class PaginationModel<T> {
  final List<T> items;
  final int totalCount;
  final int page;

  PaginationModel({
    required this.items,
    required this.totalCount,
    required this.page,
  });
}
