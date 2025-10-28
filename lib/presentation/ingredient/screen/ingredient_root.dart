import 'package:flutter/widgets.dart';
import 'package:recipe_flutter/core/di/di_setup.dart';
import 'package:recipe_flutter/presentation/ingredient/ingredient_action.dart';
import 'package:recipe_flutter/presentation/ingredient/ingredient_view_model.dart';
import 'package:recipe_flutter/presentation/ingredient/screen/ingredient_screen.dart';

class IngredientRoot extends StatelessWidget {
  final int recipeId;
  const IngredientRoot({
    super.key,
    required this.recipeId,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<IngredientViewModel>();
    viewModel.onAction(IngredientAction.loadRecipe(recipeId));

    return ListenableBuilder(
        listenable: viewModel,
        builder: (context, widget) {
          return IngredientScreen(
            state: viewModel.state,
            onAction: viewModel.onAction,
          );
        });
  }
}
