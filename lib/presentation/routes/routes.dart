import 'dart:async';

import 'package:edutainstem/application/auth/bloc/firebase_auth_bloc.dart';
import 'package:edutainstem/application/sidebar/cubit/sidebar_x_cubit.dart';
import 'package:edutainstem/presentation/pages/accounts_screen.dart';
import 'package:edutainstem/presentation/pages/home_screen.dart';
import 'package:edutainstem/presentation/pages/lessons_screen.dart';
import 'package:edutainstem/presentation/pages/main_dashboard_screen.dart';
import 'package:edutainstem/presentation/pages/redirection_screens.dart';
import 'package:edutainstem/presentation/pages/rooms_screen.dart';
import 'package:edutainstem/presentation/pages/sign_in_screen.dart';
import 'package:edutainstem/presentation/pages/sign_up_done_screen.dart';
import 'package:edutainstem/presentation/pages/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sidebarx/sidebarx.dart';

class GoRouterBlocRefresh extends ChangeNotifier {
  late final StreamSubscription _sub;
  GoRouterBlocRefresh(Stream stream) {
    _sub = stream.asBroadcastStream().listen((_) => notifyListeners());
  }
  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
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

  static int? _sidebarIndexForPath(String path) {
    if (path == HomeScreen.routeName) {
      return 0;
    }
    if (path == RoomsScreen.routeName) {
      return 1;
    }
    if (path == AccountsScreen.routeName) {
      return 2;
    }
    return null;
  }

  static void _syncSidebarIndex(BuildContext context, GoRouterState state) {
    final index = _sidebarIndexForPath(state.matchedLocation);
    if (index == null) {
      return;
    }

    final cubit = context.read<SidebarXCubit>();
    final currentIndex = cubit.state.maybeWhen(
      initial: (currentIndex) => currentIndex,
      orElse: () => 0,
    );
    if (currentIndex == index) {
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) {
        return;
      }
      cubit.setSelectedIndex(index);
    });
  }

  /// This function initializes GoRouter with the correct initial route.
  static Future<GoRouter> getRouter({
    required FirebaseAuthBloc authBloc,
    SidebarXController? sidebarController,
  }) async {
    // bool isLoggedIn = await AuthStorageService.isSignedIn();
    final bool isLoggedIn = await _isTokenValid();

    final SidebarXController sidebarController = SidebarXController(
      selectedIndex: 0,
    );

    // Any path here requires the user to be authenticated.
    final protected = <String>{
      HomeScreen.routeName,
      RoomsScreen.routeName,
      LessonsScreen.routeName,
      AccountsScreen.routeName,
    };

    return GoRouter(
      // initialLocation: SignUpFormFields.routeName,
      navigatorKey: _rootNavigatorKey,
      initialLocation: /* isLoggedIn
          ? HomeScreen.routeName
          :  */
          SplashScreen.routeName,
      refreshListenable: GoRouterBlocRefresh(authBloc.stream),

      // Fallback for unknown/unnamed paths
      errorBuilder: (context, state) =>
          NotFoundScreen(path: state.uri.toString()),

      routes: [
        // Splash while auth status is resolving
        GoRoute(
          path: SplashScreen.routeName,
          name: SplashScreen.routeName,
          builder: (context, state) => const SplashScreen(),
        ),

        // Public routes
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: SignInScreen.routeName,
          name: SignInScreen.routeName,
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: SignUpScreen.routeName,
          name: SignUpScreen.routeName,
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          path: SignUpDoneScreen.routeName,
          name: SignUpDoneScreen.routeName,
          // builder: (context, state) => const RoomsScreen(),
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: SignUpDoneScreen()),
        ),

        // Protected shell (sidebar + child pages)
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            _syncSidebarIndex(context, state);
            return MainScreenShell(controller: sidebarController, child: child);
          },
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
            ),
            GoRoute(
              path: LessonsScreen.routeName,
              name: LessonsScreen.routeName,
              // builder: (context, state) => const RoomsScreen(),
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: LessonsScreen()),
            ),
            GoRoute(
              path: AccountsScreen.routeName,
              name: AccountsScreen.routeName,
              // builder: (context, state) => const RoomsScreen(),
              pageBuilder: (context, state) =>
                  const NoTransitionPage(child: AccountsScreen()),
            ),
          ],
        ),
      ],

      // Centralized redirect that runs on every nav & when the bloc emits
      redirect: (context, state) {
        // return SignUpDoneScreen.routeName;

        final status = authBloc.status; // from your bloc.getter
        final path = state.matchedLocation; // normalized path
        final full = state.uri.toString(); // keep query/fragment
        final isLogin = path == SignInScreen.routeName;
        final requiresAuth = protected.contains(path);

        // 1) While loading/unknown, stay on splash
        if (status == AuthStatus.unknown || status == AuthStatus.loading) {
          return path == '/splash' ? null : '/splash';
        }

        final isAuthed = status == AuthStatus.authenticated;

        // 2) Not authed → block protected pages, send to /sign-in?from=...
        if (!isAuthed && requiresAuth) {
          final from = Uri.encodeComponent(full);
          // return '${SignInScreen.routeName}?from=$from';
          return SignInScreen.routeName;
        }

        // 3) Authed users shouldn’t see the sign-in screen
        if (isAuthed && isLogin) {
          return HomeScreen.routeName;
        }

        // 4) Ready to go; if we’re lingering on splash, send somewhere sensible
        if (path == '/splash') {
          return isAuthed ? HomeScreen.routeName : SignInScreen.routeName;
        }

        // 5) Otherwise allow navigation
        return null;
      },
    );
  }
}
