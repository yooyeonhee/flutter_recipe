import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';

part 'ingredient_action.freezed.dart';

@freezed
class IngredientAction with _$IngredientAction {
  const factory IngredientAction.onTapFavorite(Recipe recipe) = OnTapFavorite;
  const factory IngredientAction.onTapIngredient() = OnTapIngredient;
  const factory IngredientAction.onTapProcedure() = OnTapProcedure;
  const factory IngredientAction.onTapFollow(Recipe recipe) = OnTapFollow;
  const factory IngredientAction.loadRecipe(int recipeId) = LoadRecipe;
}
