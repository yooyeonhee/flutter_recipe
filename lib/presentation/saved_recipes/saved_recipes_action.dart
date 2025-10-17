import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';

part 'saved_recipes_action.freezed.dart';

@freezed
class SavedRecipesAction with _$SavedRecipesAction {
  const factory SavedRecipesAction.onTapFavorite(Recipe recipe) = OnTapFavorite;
  const factory SavedRecipesAction.onTapRecipe(Recipe recipe) = OnTapRecipe;
}
