import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/repository/bookmark_repository.dart';
import 'package:recipe_flutter/domain/repository/recipe_repository.dart';

class GetSavedRecipesUseCase {
  final RecipeRepository _recipeRepository;
  final BookmarkRepository _bookmarkRepository;

  GetSavedRecipesUseCase(
      {required RecipeRepository recipeRepository,
      required BookmarkRepository bookmarkRepository})
      : _recipeRepository = recipeRepository,
        _bookmarkRepository = bookmarkRepository;

  Future<List<Recipe>> execute() async {
    final bookmarkIds = await _bookmarkRepository.getBookmarkIds();
    final recipes = await _recipeRepository.getRecipes();

    return recipes.where((e) => bookmarkIds.contains(e.id)).toList();
  }
}
