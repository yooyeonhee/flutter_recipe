import 'package:go_router/go_router.dart';
import 'package:recipe_flutter/core/routing/route_paths.dart';
import 'package:recipe_flutter/presentation/home/home_screen.dart';
import 'package:recipe_flutter/presentation/main/main_screen.dart';
import 'package:recipe_flutter/presentation/notifications/notifications_screen.dart';
import 'package:recipe_flutter/presentation/profile/profile_screen.dart';
import 'package:recipe_flutter/presentation/saved_recipes/screen/saved_recipes_root.dart';
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
          context.go(RoutePaths.home);
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
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(
          body: navigationShell,
          currentPageIndex: navigationShell.currentIndex,
          onChangeIndex: (index) {
            navigationShell.goBranch(index,
                initialLocation: index == navigationShell.currentIndex);
          },
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.home,
              builder: (context, state) => const HomeScreen(
                name: 'Jega',
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.savedRecipes,
              builder: (context, state) => const SavedRecipesRoot(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.notifications,
              builder: (context, state) => const NotificationsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        )
      ],
    ),
  ],
);
