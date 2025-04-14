import 'package:recipe_flutter/domain/model/recipe.dart';

class SearchState {
  final List<Recipe> recipes;
  final bool isLoading;

  SearchState({
    this.recipes = const [],
    this.isLoading = false,
  });

  SearchState copyWith({
    List<Recipe>? recipes,
    bool? isLoading,
  }) {
    return SearchState(
      recipes: recipes ?? this.recipes,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
