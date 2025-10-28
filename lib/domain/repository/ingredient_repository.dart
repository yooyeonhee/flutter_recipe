import 'package:recipe_flutter/domain/model/ingredient.dart';

abstract interface class IngredientRepository {
  Future<List<Ingredient>> getIngredients();
}
