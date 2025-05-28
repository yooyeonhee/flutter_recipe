import 'dart:io';

import 'package:recipe_flutter/core/domain/error/network_error.dart';
import 'package:recipe_flutter/core/domain/error/result.dart';
import 'package:recipe_flutter/domain/repository/recipe_repository.dart';

class GetCategoriesUseCase {
  final RecipeRepository _recipeRepository;

  GetCategoriesUseCase({required RecipeRepository recipeRepository})
      : _recipeRepository = recipeRepository;

  Future<Result<List<String>, NetworkError>> execute() async {
    try {
      final recipes = await _recipeRepository.getRecipes();
      return Result.success([
        'All',
        ...recipes.map((e) => e.category).toSet(),
      ]);
    } on SocketException {
      return const Result.error(NetworkError.noInternet);
    } catch (e) {
      return const Result.error(NetworkError.unknown);
    }
  }
}
