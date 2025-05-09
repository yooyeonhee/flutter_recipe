class HomeState {
  final String selectedCategory;
  final List<String> categories;

  HomeState({
    this.selectedCategory = 'All',
    this.categories = const [],
  });

  HomeState copyWith({
    String? selectedCategory,
    List<String>? categories,
  }) {
    return HomeState(
        selectedCategory: selectedCategory ?? this.selectedCategory,
        categories: categories ?? this.categories);
  }
}
