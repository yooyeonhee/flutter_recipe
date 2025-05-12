import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_flutter/core/di/di_setup.dart';
import 'package:recipe_flutter/core/routing/route_paths.dart';
import 'package:recipe_flutter/presentation/home/home_view_model.dart';
import 'package:recipe_flutter/presentation/home/screen/home_screen.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<HomeViewModel>();

    return ListenableBuilder(
      builder: (context, widget) {
        return HomeScreen(
          state: viewModel.state,
          name: 'jaga',
          onTapSearchField: () => context.push(RoutePaths.search),
          onSelectCategory: (String category) {
            viewModel.onSelectCategory(category);
          },
        );
      },
      listenable: viewModel,
    );
  }
}
