import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_flutter/core/routing/route_paths.dart';
import 'package:recipe_flutter/presentation/home/screen/home_screen.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      name: 'jaga',
      onTapSearchField: () => context.push(RoutePaths.search),
    );
  }
}
