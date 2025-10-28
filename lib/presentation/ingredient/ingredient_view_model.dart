import 'package:flutter/foundation.dart';
import 'package:recipe_flutter/domain/repository/ingredient_repository.dart';
import 'package:recipe_flutter/domain/repository/procedure_repository.dart';
import 'package:recipe_flutter/domain/use_case/get_dishes_by_category_use_case.dart';
import 'package:recipe_flutter/presentation/ingredient/ingredient_action.dart';
import 'package:recipe_flutter/presentation/ingredient/ingredient_state.dart';

class IngredientViewModel with ChangeNotifier {
  final IngredientRepository _ingredientRepository;
  final ProcedureRepository _procedureRepository;
  final GetDishesByCategoryUseCase _getDishesByCategoryUseCase;

  IngredientState _state = const IngredientState();

  IngredientState get state => _state;

  IngredientViewModel(
      {required IngredientRepository ingredientRepository,
      required ProcedureRepository procedureRepository,
      required GetDishesByCategoryUseCase getDishesByCategoryUseCase})
      : _ingredientRepository = ingredientRepository,
        _procedureRepository = procedureRepository,
        _getDishesByCategoryUseCase = getDishesByCategoryUseCase;

  void onAction(IngredientAction action) async {
    switch (action) {
      case LoadRecipe():
        _loadRecipe(action.recipeId);
      case OnTapFavorite():
      case OnTapIngredient():
      case OnTapProcedure():
      case OnTapFollow():
    }
  }

  void _getIngredients() async {
    final ingredients = await _ingredientRepository.getIngredients();
    _state = state.copyWith(ingredients: ingredients);
    notifyListeners();
  }

  void _getProcedures() async {
    if (state.recipe != null) {
      final recipeId = state.recipe!.id;
      final procedures =
          await _procedureRepository.getProceduresByRecipeId(state.recipe!.id);
      _state = state.copyWith(
          procedures: procedures.where((e) => e.recipeId == recipeId).toList());
      notifyListeners();
    }
  }

  void _loadRecipe(int id) async {
    _getDishesByCategoryUseCase.execute('All').listen((recipes) {
      final recipe = recipes.firstWhere((e) => e.id == id);
      _state = state.copyWith(recipe: recipe);
      notifyListeners();

      _getIngredients();
      _getProcedures();
    });
  }
}
