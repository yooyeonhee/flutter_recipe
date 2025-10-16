import 'package:get_it/get_it.dart';
import 'package:recipe_flutter/data/data_source/local/default_local_storage.dart';
import 'package:recipe_flutter/data/data_source/remote/remote_recipe_data_source_impl.dart';
import 'package:recipe_flutter/data/repository/mock_bookmark_repository_impl.dart';
import 'package:recipe_flutter/data/repository/mock_recent_search_recipe_repository_impl.dart';
import 'package:recipe_flutter/data/repository/mock_recipe_repository_impl.dart';
import 'package:recipe_flutter/domain/data_source/local_storage.dart';
import 'package:recipe_flutter/domain/data_source/recipe_data_source.dart';
import 'package:recipe_flutter/domain/repository/bookmark_repository.dart';
import 'package:recipe_flutter/domain/repository/recent_search_recipe_repository.dart';
import 'package:recipe_flutter/domain/repository/recipe_repository.dart';
import 'package:recipe_flutter/domain/use_case/get_categories_use_case.dart';
import 'package:recipe_flutter/domain/use_case/get_dishes_by_category_use_case.dart';
import 'package:recipe_flutter/domain/use_case/get_new_recipes_use_case.dart';
import 'package:recipe_flutter/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:recipe_flutter/domain/use_case/search_recipes_use_case.dart';
import 'package:recipe_flutter/domain/use_case/toggle_bookmark_recipe_use_case.dart';
import 'package:recipe_flutter/presentation/home/home_view_model.dart';
import 'package:recipe_flutter/presentation/saved_recipes/saved_recipes_view_model.dart';
import 'package:recipe_flutter/presentation/search/search_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  // DataSource
  getIt.registerSingleton<RecipeDataSource>(RemoteRecipeDataSourceImpl());
  getIt.registerSingleton<LocalStorage>(DefaultLocalStorage());

  // Repository
  getIt.registerSingleton<RecipeRepository>(
    MockRecipeRepositoryImpl(
      recipeDataSource: getIt(),
    ),
    // 에러처리 테스트
    // ErrorMockRecipeRepositoryImpl(
    //   recipeDataSource: getIt(),
    // ),
  );
  getIt.registerSingleton<BookmarkRepository>(MockBookmarkRepositoryImpl());
  getIt.registerSingleton<RecentSearchRecipeRepository>(
    MockRecentSearchRecipeRepositoryImpl(
      localStorage: getIt(),
    ),
  );

  // UseCase
  getIt.registerSingleton(GetSavedRecipesUseCase(
    recipeRepository: getIt(),
    bookmarkRepository: getIt(),
  ));
  getIt.registerSingleton(
    SearchRecipesUseCase(
      recipeRepository: getIt(),
      localStorage: getIt(),
    ),
  );
  getIt.registerSingleton(
    GetCategoriesUseCase(recipeRepository: getIt()),
  );
  getIt.registerSingleton(
    GetDishesByCategoryUseCase(
        recipeRepository: getIt(), bookmarkRepository: getIt()),
  );
  getIt.registerSingleton(
    GetNewRecipesUseCase(recipeRepository: getIt()),
  );
  getIt.registerSingleton(ToggleBookmarkRecipeUseCase(
      bookmarkRepository: getIt(), recipeRepository: getIt()));

  // ViewModel
  getIt.registerCachedFactory(
    () => SavedRecipesViewModel(
      getSavedRecipesUseCase: getIt(),
    ),
  );
  getIt.registerFactory<SearchViewModel>(
    () => SearchViewModel(
      recentSearchRecipeRepository: getIt(),
      searchRecipesUseCase: getIt(),
    ),
  );
  getIt.registerFactory<HomeViewModel>(
    () => HomeViewModel(
      getCategoriesUseCase: getIt(),
      getDishesByCategoryUseCase: getIt(),
      getNewRecipesUseCase: getIt(),
      toggleBookmarkRecipeUseCase: getIt(),
    ),
  );
}
