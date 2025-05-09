import 'package:recipe_flutter/domain/data_source/local_storage.dart';
import 'package:recipe_flutter/domain/filter/filter_state.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/repository/recipe_repository.dart';

class SearchRecipesUseCase {
  final RecipeRepository _recipeRepository;
  final LocalStorage _localStorage;

  const SearchRecipesUseCase(
      {required RecipeRepository recipeRepository,
      required LocalStorage localStorage})
      : _recipeRepository = recipeRepository,
        _localStorage = localStorage;

  Future<List<Recipe>> execute(
    String query,
    FilterState filterState,
  ) async {
    final normalizedQuery = query.toLowerCase().replaceAll(' ', '');

    final results = (await _recipeRepository.getRecipes()).where((e) {
      final nameMatch =
          e.name.toLowerCase().replaceAll(' ', '').contains(normalizedQuery);
      final timeMatch = filterState.time == 'All' || filterState.time == e.time;
      final rateMatch = e.rating >= filterState.rate;
      final categoryMatch =
          filterState.category == 'All' || filterState.category == e.category;

      return nameMatch && timeMatch && rateMatch && categoryMatch;
    });

    _localStorage.save({
      'recipes': results.map(
        (el) => el.toJson(),
      ),
    });

    return results.toList();
  }
}
