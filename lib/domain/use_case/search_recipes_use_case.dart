import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/repository/recipe_repository.dart';

class SearchRecipesUseCase {
  final RecipeRepository _recipeRepository;

  const SearchRecipesUseCase({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<List<Recipe>> execute(String query) async {
    final results = (await _recipeRepository.getRecipes()).where((e) => e.name
        .toLowerCase()
        .replaceAll(' ', '')
        .contains(query.toLowerCase().replaceAll(' ', '')));

    return results.toList();
  }
}
