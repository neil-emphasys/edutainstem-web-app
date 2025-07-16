import 'package:edutainstem/presentation/pages/home_screen.dart';
import 'package:edutainstem/presentation/pages/lessons_screen.dart';
import 'package:edutainstem/presentation/pages/main_dashboard_screen.dart';
import 'package:edutainstem/presentation/pages/rooms_screen.dart';
import 'package:edutainstem/presentation/pages/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sidebarx/sidebarx.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>();

class Routes {
  Routes._();

  static Future<bool> _isTokenValid() async {
    /* final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        // Force refresh to validate token
        await user.getIdToken(true);
        return true;
      } catch (e) {
        // Token refresh failed — treat as invalid
        return false;
      }
    } */
    return false;
  }

  /// This function initializes GoRouter with the correct initial route.
  static Future<GoRouter> getRouter() async {
    // bool isLoggedIn = await AuthStorageService.isSignedIn();
    final bool isLoggedIn = await _isTokenValid();

    final SidebarXController sidebarController = SidebarXController(
      selectedIndex: 0,
    );

    return GoRouter(
      // initialLocation: SignUpFormFields.routeName,
      initialLocation: /* isLoggedIn
          ? HomeScreen.routeName
          :  */
          SignInScreen.routeName,
      routes: [
        GoRoute(
          path: SignInScreen.routeName,
          name: SignInScreen.routeName,
          builder: (context, state) => const SignInScreen(),
        ),
        ShellRoute(
          builder: (context, state, child) =>
              MainScreenShell(controller: sidebarController, child: child),
          routes: [
            GoRoute(
              path: HomeScreen.routeName,
              name: HomeScreen.routeName,
              // builder: (context, state) => const HomeScreen(),
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: HomeScreen()),
              /* pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child: const HomeScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(
                          curve: Curves.easeInOut,
                        ).animate(animation),
                        child: child,
                      );
                    },
              ), */
            ),
            GoRoute(
              path: RoomsScreen.routeName,
              name: RoomsScreen.routeName,
              // builder: (context, state) => const RoomsScreen(),
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: RoomsScreen()),
              /* pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child: const RoomsScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(
                          curve: Curves.easeInOut,
                        ).animate(animation),
                        child: child,
                      );
                    },
              ), */
            ),
            GoRoute(
              path: LessonsScreen.routeName,
              name: LessonsScreen.routeName,
              // builder: (context, state) => const RoomsScreen(),
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: LessonsScreen()),
              /* pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child: const RoomsScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(
                          curve: Curves.easeInOut,
                        ).animate(animation),
                        child: child,
                      );
                    },
              ), */
            ),
          ],
        ),
      ],
    );
  }
}
