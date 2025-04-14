import 'package:recipe_flutter/domain/data_source/recipe_data_source.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/repository/recent_search_recipe_repository.dart';

class MockRecentSearchRecipeRepositoryImpl
    implements RecentSearchRecipeRepository {
  final RecipeDataSource _recipeDataSource;

  MockRecentSearchRecipeRepositoryImpl(
      {required RecipeDataSource recipeDataSource})
      : _recipeDataSource = recipeDataSource;

  @override
  Future<List<Recipe>> getRecentRecipes() async {
    final recipes = await _recipeDataSource.getRecipes();
    return recipes.map((e) => Recipe.fromJson(e)).toList();
  }

  @override
  Future<void> updateRecentSearchRecipes(List<Recipe> recipes) {
    throw UnimplementedError();
  }
}
