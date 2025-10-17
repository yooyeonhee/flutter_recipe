import 'dart:async';
import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/domain/error/network_error.dart';
import 'package:recipe_flutter/core/domain/error/result.dart';
import 'package:recipe_flutter/domain/error/bookmark_error.dart';
import 'package:recipe_flutter/domain/error/new_recipe_error.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/use_case/get_categories_use_case.dart';
import 'package:recipe_flutter/domain/use_case/get_dishes_by_category_use_case.dart';
import 'package:recipe_flutter/domain/use_case/get_new_recipes_use_case.dart';
import 'package:recipe_flutter/domain/use_case/toggle_bookmark_recipe_use_case.dart';
import 'package:recipe_flutter/presentation/home/home_action.dart';
import 'package:recipe_flutter/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetDishesByCategoryUseCase _getDishesByCategoryUseCase;
  final GetNewRecipesUseCase _getNewRecipesUseCase;
  final ToggleBookmarkRecipeUseCase _toggleBookmarkRecipeUseCase;
  StreamSubscription? _streamSubscription;

  final _eventController = StreamController<NetworkError>();

  Stream<NetworkError> get eventStream => _eventController.stream;

  HomeState _state = const HomeState(name: 'Jega');

  HomeViewModel(
      {required GetCategoriesUseCase getCategoriesUseCase,
      required GetDishesByCategoryUseCase getDishesByCategoryUseCase,
      required GetNewRecipesUseCase getNewRecipesUseCase,
      required ToggleBookmarkRecipeUseCase toggleBookmarkRecipeUseCase})
      : _getCategoriesUseCase = getCategoriesUseCase,
        _getDishesByCategoryUseCase = getDishesByCategoryUseCase,
        _getNewRecipesUseCase = getNewRecipesUseCase,
        _toggleBookmarkRecipeUseCase = toggleBookmarkRecipeUseCase {
    _fetchCategories();
    _fetchNewRecipes();
  }

  HomeState get state => _state;

  void _fetchCategories() async {
    final result = await _getCategoriesUseCase.execute();
    switch (result) {
      case ResultSuccess<List<String>, NetworkError>():
        _state = state.copyWith(
          categories: result.data,
          selectedCategory: 'All',
        );
        notifyListeners();

        await _fetchDishesByCategory('All');

        notifyListeners();
      case ResultError<List<String>, NetworkError>():
        switch (result.error) {
          case NetworkError.requestTimeout:
          case NetworkError.noInternet:
          case NetworkError.serverError:
          case NetworkError.unknown:
        }
        // log(result.error.toString());
        _eventController.add(result.error);
    }
  }

  Future<void> _fetchDishesByCategory(String category) async {
    _streamSubscription =
        _getDishesByCategoryUseCase.execute(category).listen((dishes) {
      _state = state.copyWith(dishes: dishes);
      notifyListeners();
    });
  }

  Future<void> _fetchNewRecipes() async {
    final result = await _getNewRecipesUseCase.execute();

    switch (result) {
      case ResultSuccess<List<Recipe>, NewRecipeError>():
        _state = state.copyWith(
          newRecipes: result.data,
        );
        notifyListeners();
      case ResultError<List<Recipe>, NewRecipeError>():
        switch (result.error) {
          case NewRecipeError.noRecipe:
          case NewRecipeError.invalidCategory:
          case NewRecipeError.unknown:
        }
    }
  }

  void onAction(HomeAction action) async {
    switch (action) {
      case OnSelectCategory():
        _onSelectCategory(action.category);
      case OnTapFavorite():
        _onTapFavorite(action.recipe);
    }
  }

  void _onTapFavorite(Recipe recipe) async {
    final result = await _toggleBookmarkRecipeUseCase.execute(recipe.id);
    switch (result) {
      case ResultSuccess<List<Recipe>, BookmarkError>():
        _state = state.copyWith(dishes: result.data);
        notifyListeners();
      case ResultError<List<Recipe>, BookmarkError>():
        switch (result.error) {
          case BookmarkError.notFound:
          case BookmarkError.saveFailed:
          case BookmarkError.unknown:
        }
    }
  }

  void _onSelectCategory(String category) async {
    _state = state.copyWith(selectedCategory: category);
    notifyListeners();

    await _fetchDishesByCategory(category);
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }
}
