import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/repository/recipe_repository.dart';

class GetDishesByCategoryUseCase {
  final RecipeRepository _recipeRepository;

  GetDishesByCategoryUseCase({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository;

  Future<List<Recipe>> execute(String category) async {
    final recipes = await _recipeRepository.getRecipes();
    if (category == 'All') {
      return recipes;
    }
    return recipes.where((e) => e.category == category).toList();
  }
}
