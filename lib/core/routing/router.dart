import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_flutter/core/routing/route_paths.dart';
import 'package:recipe_flutter/data/repository/mock_bookmark_repository_impl.dart';
import 'package:recipe_flutter/data/repository/mock_recipe_repository_impl.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:recipe_flutter/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:recipe_flutter/presentation/sign_in/sign_in_screen.dart';
import 'package:recipe_flutter/presentation/sign_up/sign_up_screen.dart';
import 'package:recipe_flutter/presentation/splash/splash_screen.dart';

final router = GoRouter(
  initialLocation: RoutePaths.splash,
  routes: [
    GoRoute(
      path: RoutePaths.splash,
      builder: (context, state) => SplashScreen(
        onTapStartCooking: () {
          context.go(RoutePaths.signIn);
        },
      ),
    ),
    GoRoute(
      path: RoutePaths.signIn,
      builder: (context, state) => SignInScreen(
        onTapSignIn: () {
          context.go(RoutePaths.savedRecipes);
        },
        onTapRouteToSignUp: () {
          context.go(RoutePaths.signUp);
        },
      ),
    ),
    GoRoute(
      path: RoutePaths.signUp,
      builder: (context, state) => SignUpScreen(
        onTapRouteToSignIn: () {
          context.go(RoutePaths.signIn);
        },
      ),
    ),
    GoRoute(
      path: RoutePaths.savedRecipes,
      builder: (context, state) => FutureBuilder<List<Recipe>>(
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

          return SavedRecipesScreen(recipes: recipes);
        },
      ),
    )
  ],
);
