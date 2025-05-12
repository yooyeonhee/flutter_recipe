import 'package:recipe_flutter/domain/model/recipe.dart';

class HomeState {
  final String selectedCategory;
  final List<String> categories;
  final List<Recipe> dishes;

  HomeState({
    this.selectedCategory = 'All',
    this.categories = const [],
    this.dishes = const [],
  });

  HomeState copyWith({
    String? selectedCategory,
    List<String>? categories,
    List<Recipe>? dishes,
  }) {
    return HomeState(
        selectedCategory: selectedCategory ?? this.selectedCategory,
        dishes: dishes ?? this.dishes,
        categories: categories ?? this.categories);
  }
}
