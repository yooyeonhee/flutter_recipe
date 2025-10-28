import 'package:flutter/widgets.dart';
import 'package:recipe_flutter/presentation/ingredient/ingredient_action.dart';
import 'package:recipe_flutter/presentation/ingredient/ingredient_state.dart';

class IngredientScreen extends StatelessWidget {
  final IngredientState state;
  final void Function(IngredientAction action) onAction;

  const IngredientScreen({
    super.key,
    required this.state,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
