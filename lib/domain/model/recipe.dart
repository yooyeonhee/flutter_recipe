// Recipe 모델 클래스
import 'package:recipe_flutter/domain/model/recipe_ingredient.dart';

class Recipe {
  final int id;
  final String category;
  final String name;
  final String image;
  final String chef;
  final String time;
  final double rating;
  final List<RecipeIngredient> ingredients;

  Recipe({
    required this.id,
    required this.category,
    required this.name,
    required this.image,
    required this.chef,
    required this.time,
    required this.rating,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      category: json['category'],
      name: json['name'],
      image: json['image'],
      chef: json['chef'],
      time: json['time'],
      rating: json['rating'].toDouble(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((ingredient) => RecipeIngredient.fromJson(ingredient))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'name': name,
      'image': image,
      'chef': chef,
      'time': time,
      'rating': rating,
      'ingredients':
          ingredients.map((ingredient) => ingredient.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'Recipe(id: $id, category: $category, name: $name, chef: $chef, time: $time, rating: $rating, ingredients: $ingredients)';
  }
}

// 전체 레시피 리스트를 담는 클래스
class RecipeList {
  final List<Recipe> recipes;

  RecipeList({required this.recipes});

  factory RecipeList.fromJson(Map<String, dynamic> json) {
    return RecipeList(
      recipes: (json['recipes'] as List<dynamic>)
          .map((recipe) => Recipe.fromJson(recipe))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'recipes': recipes.map((recipe) => recipe.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'RecipeList(recipes: ${recipes.length} items)';
  }
}
