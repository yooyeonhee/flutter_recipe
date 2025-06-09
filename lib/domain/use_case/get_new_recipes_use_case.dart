import 'package:recipe_flutter/core/domain/error/result.dart';
import 'package:recipe_flutter/domain/error/new_recipe_error.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/repository/recipe_repository.dart';

class GetNewRecipesUseCase {
  final RecipeRepository _recipeRepository;

  const GetNewRecipesUseCase({
    required RecipeRepository recipeRepository,
  }) : _recipeRepository = recipeRepository;

  Future<Result<List<Recipe>, NewRecipeError>> execute() async {
    try {
      final recipes = await _recipeRepository.getRecipes();

      if (recipes.isEmpty) {
        return const Result.error(NewRecipeError.noRecipe);
      }
      if (recipes.any((e) => e.category.isEmpty)) {
        return const Result.error(NewRecipeError.invalidCategory);
      }

      return Result.success(recipes.take(5).toList());
    } catch (e) {
      return const Result.error(NewRecipeError.unknown);
    }
  }
}
