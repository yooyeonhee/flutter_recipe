import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/recipe_card.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class SavedRecipesScreen extends StatelessWidget {
  final List<Recipe> recipes;

  const SavedRecipesScreen({
    super.key,
    required this.recipes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Saved recipes',
          style: TextStyles.mediumTextBold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: recipes.length,
          itemBuilder: (context, index) {
            return RecipeCard(recipe: recipes[index]);
          },
        ),
      ),
    );
  }
}
