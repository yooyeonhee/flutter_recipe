import 'package:recipe_flutter/domain/filter/filter_state.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';

class SearchState {
  final List<Recipe> recipes;
  final bool isLoading;
  final String searchTitle;
  final String resultCount;
  final FilterState filterState;
  final String query;

  SearchState({
    this.recipes = const [],
    this.isLoading = false,
    this.searchTitle = 'Recent Search',
    this.resultCount = '',
    FilterState? filterState,
    this.query = '',
  }) : filterState = filterState ??
            FilterState(
              time: 'All',
              rate: 1,
              category: 'All',
            );

  SearchState copyWith(
      {List<Recipe>? recipes,
      bool? isLoading,
      String? searchTitle,
      String? resultCount,
      FilterState? filterState,
      String? query}) {
    return SearchState(
      recipes: recipes ?? this.recipes,
      isLoading: isLoading ?? this.isLoading,
      searchTitle: searchTitle ?? this.searchTitle,
      resultCount: resultCount ?? this.resultCount,
      filterState: filterState ?? this.filterState,
      query: query ?? this.query,
    );
  }
}
