import 'package:recipe_flutter/core/domain/error/result.dart';
import 'package:recipe_flutter/domain/error/bookmark_error.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/repository/bookmark_repository.dart';
import 'package:recipe_flutter/domain/repository/recipe_repository.dart';

class ToggleBookmarkRecipeUseCase {
  final BookmarkRepository _bookmarkRepository;
  final RecipeRepository _recipeRepository;

  const ToggleBookmarkRecipeUseCase({
    required BookmarkRepository bookmarkRepository,
    required RecipeRepository recipeRepository,
  })  : _bookmarkRepository = bookmarkRepository,
        _recipeRepository = recipeRepository;

  Future<Result<List<Recipe>, BookmarkError>> execute(int recipeId) async {
    try {
      final recipe = await _recipeRepository.getRecipe(recipeId);
      if (recipe == null) {
        return const ResultError(BookmarkError.notFound);
      }
      await _bookmarkRepository.bookmarkToggle(recipeId);
      final recipes = await _recipeRepository.getRecipes();

      final ids = await _bookmarkRepository.getBookmarkIds();

      return Result.success(recipes.map((e) {
        if (ids.contains(e.id)) {
          return e.copyWith(isFavorite: true);
        }
        return e;
      }).toList());
    } catch (e) {
      return const Result.error(BookmarkError.unknown);
    }
  }
}
