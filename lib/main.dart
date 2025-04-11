import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/big_button.dart';
import 'package:recipe_flutter/core/presentation/components/filter_button.dart';
import 'package:recipe_flutter/core/presentation/components/input_field.dart';
import 'package:recipe_flutter/core/presentation/components/medium_button.dart';
import 'package:recipe_flutter/core/presentation/components/rating_button.dart';
import 'package:recipe_flutter/core/presentation/components/small_button.dart';
import 'package:recipe_flutter/core/presentation/components/tabs.dart';
import 'package:recipe_flutter/core/presentation/dialogs/rating_dialog.dart';
import 'package:recipe_flutter/data/repository/mock_bookmark_repository_impl.dart';
import 'package:recipe_flutter/data/repository/mock_recipe_repository_impl.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:recipe_flutter/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: FutureBuilder<List<Recipe>>(
          future: GetSavedRecipesUseCase(
            recipeRepository: MockRecipeRepositoryImpl(),
            bookmarkRepository: MockBookmarkRepositoryImpl(),
          ).execute(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final recipes = snapshot.data!;

            return SavedRecipesScreen(
              recipes: recipes,
            );
          }),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Component',
          style: TextStyles.largeTextBold,
        ),
      ),
      body: ListView(
        children: [
          BigButton(
            'Big Button',
            onPressed: () {
              print('Big Button');
            },
          ),
          MediumButton(
            'medium Button',
            onPressed: () {
              print('Medium Button');
            },
          ),
          SmallButton(
            'small Button',
            onPressed: () {
              print('Small Button');
            },
          ),
          const InputField(label: 'Label', placeholder: 'Placeholder'),
          const FilterButton(
            'asdfe',
            isSelected: false,
          ),
          const FilterButton(
            'asdfe',
            isSelected: true,
          ),
          const RatingButton(
            '5',
            isSelected: false,
          ),
          const RatingButton(
            '4',
            isSelected: true,
          ),
          Tabs(
            labels: ['label1', 'label2'],
            selectedIndex: 1,
            onChangeTab: (int index) {
              print('tab: $index');
            },
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return RatingDialog(
                      title: 'Rate recipe',
                      value: 0,
                      actionLabel: 'Send',
                      onChangeValue: (value) {
                        print(value);
                      },
                    );
                  },
                );
              },
              child: const Text('open rating dialog'))
        ],
      ),
    );
  }
}
