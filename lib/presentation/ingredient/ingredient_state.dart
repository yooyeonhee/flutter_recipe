import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_flutter/domain/model/chef_profile.dart';
import 'package:recipe_flutter/domain/model/ingredient.dart';
import 'package:recipe_flutter/domain/model/procedure.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';

part 'ingredient_state.freezed.dart';
part 'ingredient_state.g.dart';

@freezed
class IngredientState with _$IngredientState {
  const factory IngredientState({
    Recipe? recipe,
    ChefProfile? chefProfile,
    @Default([]) List<Ingredient> ingredients,
    @Default([]) List<Procedure> procedures,
    @Default('Ingredient') String selectedTabValue,
  }) = _IngredientState;

  factory IngredientState.fromJson(Map<String, dynamic> json) =>
      _$IngredientStateFromJson(json);
}
