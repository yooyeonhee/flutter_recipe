import 'package:flutter/material.dart';
import 'package:recipe_flutter/domain/repository/recent_search_recipe_repository.dart';

import 'package:recipe_flutter/presentation/search/search_state.dart';

class SearchViewModel with ChangeNotifier {
  final RecentSearchRecipeRepository _recentSearchRecipeRepository;

  SearchViewModel(
      {required RecentSearchRecipeRepository recentSearchRecipeRepository})
      : _recentSearchRecipeRepository = recentSearchRecipeRepository {
    _loadRecentSearchRecipes();
  }

  SearchState _state = SearchState();

  SearchState get state => _state;

  void _loadRecentSearchRecipes() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    _state = state.copyWith(
      recipes: await _recentSearchRecipeRepository.getRecentRecipes(),
      isLoading: false,
    );
    notifyListeners();
  }
}
