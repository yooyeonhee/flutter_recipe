import 'package:recipe_flutter/domain/model/recipe.dart';

class SearchState {
  final List<Recipe> recipes;
  final bool isLoading;
  final String searchTitle;
  final String resultCount;

  SearchState({
    this.recipes = const [],
    this.isLoading = false,
    this.searchTitle = 'Recent Search',
    this.resultCount = '',
  });

  SearchState copyWith({
    List<Recipe>? recipes,
    bool? isLoading,
    String? searchTitle,
    String? resultCount,
  }) {
    return SearchState(
      recipes: recipes ?? this.recipes,
      isLoading: isLoading ?? this.isLoading,
      searchTitle: searchTitle ?? this.searchTitle,
      resultCount: resultCount ?? this.resultCount,
    );
  }
}
