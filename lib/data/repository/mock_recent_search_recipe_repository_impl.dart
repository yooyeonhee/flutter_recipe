import 'package:recipe_flutter/domain/data_source/local_storage.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/repository/recent_search_recipe_repository.dart';

class MockRecentSearchRecipeRepositoryImpl
    implements RecentSearchRecipeRepository {
  final LocalStorage _localStorage;

  const MockRecentSearchRecipeRepositoryImpl(
      {required LocalStorage localStorage})
      : _localStorage = localStorage;

  @override
  Future<List<Recipe>> getRecentRecipes() async {
    try {
      final json = await _localStorage.load();
      return (json['recipes'] as Iterable)
          .map((el) => Recipe.fromJson(el))
          .toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<void> updateRecentSearchRecipes(List<Recipe> recipes) async {
    _localStorage.save({
      'recipes': recipes.map((el) => el.toJson()),
    });
  }
}
