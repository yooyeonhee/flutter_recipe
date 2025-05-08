import 'package:recipe_flutter/domain/data_source/local_storage.dart';
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

  Future<List<Recipe>> execute(String query) async {
    final results = (await _recipeRepository.getRecipes()).where((e) => e.name
        .toLowerCase()
        .replaceAll(' ', '')
        .contains(query.toLowerCase().replaceAll(' ', '')));

    _localStorage.save({
      'recipes': results.map(
        (el) => el.toJson(),
      ),
    });

    return results.toList();
  }
}
