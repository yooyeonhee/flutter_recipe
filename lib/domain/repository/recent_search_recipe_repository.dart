import 'package:recipe_flutter/domain/model/recipe.dart';

abstract interface class RecentSearchRecipeRepository {
  Future<List<Recipe>> getRecentRecipes();

  Future<void> updateRecentSearchRecipes(List<Recipe> recipes);
}
