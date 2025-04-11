// Recipe와 Ingredient를 연결하는 클래스 (재료의 양 포함)
import 'package:recipe_flutter/domain/model/ingredient.dart';

class RecipeIngredient {
  final Ingredient ingredient;
  final int amount;

  RecipeIngredient({
    required this.ingredient,
    required this.amount,
  });

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) {
    return RecipeIngredient(
      ingredient: Ingredient.fromJson(json['ingredient']),
      amount: json['amount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ingredient': ingredient.toJson(),
      'amount': amount,
    };
  }

  @override
  String toString() {
    return 'RecipeIngredient(ingredient: ${ingredient.name}, amount: $amount)';
  }
}
