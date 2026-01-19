import 'package:animate_do/animate_do.dart';
import 'package:edutainstem/application/auth/bloc/firebase_auth_bloc.dart';
import 'package:edutainstem/application/sidebar/cubit/sidebar_x_cubit.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/presentation/pages/accounts_screen.dart';
import 'package:edutainstem/presentation/pages/home_screen.dart';
import 'package:edutainstem/presentation/pages/rooms_screen.dart';
import 'package:edutainstem/presentation/pages/sign_in_screen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:go_router/go_router.dart';
import 'package:mesh_gradient/mesh_gradient.dart';
import 'package:sidebarx/sidebarx.dart';

class MainScreenShell extends StatefulWidget {
  static const String routeName = '/main-dashboard';

  const MainScreenShell({
    required this.child,
    required this.controller,
    super.key,
  });

  final Widget child;
  final SidebarXController controller;

  @override
  State<MainScreenShell> createState() => _MainScreenShellState();
}

class _MainScreenShellState extends State<MainScreenShell> {
  final canvasColor = Colors.blue;

  final accentCanvasColor = Colors.blueGrey;

  final actionColor = Colors.red;

  bool animateAccountsTab = true;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      animateAccountsTab = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final alpha = 10;

    return BlocListener<SidebarXCubit, SidebarXState>(
      listener: (context, state) {
        state.whenOrNull(
          initial: (index) {
            widget.controller.selectIndex(index);
          },
        );
      },
      child: BlocConsumer<FirebaseAuthBloc, FirebaseAuthState>(
        listener: (context, state) {
          state.mapOrNull(
            unauthenticated: (value) => context.goNamed(SignInScreen.routeName),
          );
        },
        builder: (context, state) {
          final visibleAccountsTab = state.maybeWhen(
            orElse: () => false,
            authenticated: (user, userModel, signInType) {
              return userModel?.isAdmin ?? false;
            },
          );

          return Scaffold(
            body: Stack(
              children: [
                // Background mesh gradient
                Container(
                  constraints: const BoxConstraints.expand(),
                  color: AppColors.white,
                  child: AnimatedMeshGradient(
                    colors: [
                      const Color.fromARGB(255, 215, 236, 244).withAlpha(alpha),
                      const Color.fromARGB(255, 241, 217, 224).withAlpha(alpha),
                      const Color.fromARGB(255, 243, 224, 213).withAlpha(alpha),
                      const Color.fromARGB(255, 242, 231, 213).withAlpha(alpha),
                    ],
                    options: AnimatedMeshGradientOptions(speed: 0.01),
                  ),
                ),
                Row(
                  children: [
                    SidebarX(
                      controller: widget.controller,
                      theme: SidebarXTheme(
                        width: 20.w,
                        padding: EdgeInsets.only(bottom: 16.r),
                        margin: EdgeInsets.all(16.r),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(40.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(50),
                              blurRadius: 8,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),

                        // textStyle: const TextStyle(color: Colors.white),
                        // selectedTextStyle: const TextStyle(color: Colors.white),
                        itemTextPadding: const EdgeInsets.only(left: 30),
                        selectedItemTextPadding: const EdgeInsets.only(
                          left: 30,
                        ),
                        // itemDecoration: BoxDecoration(
                        //   border: Border.all(color: canvasColor),
                        // ),
                        selectedItemDecoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const RadialGradient(
                            colors: [
                              Color(0xFFEB7A36),
                              Color(0xFFDE2C60),
                              Color(0xFFD8C74A),
                              AppColors.primary,
                            ],
                            center: Alignment.center,
                            radius: 0.85,
                            focal: Alignment.center,
                            focalRadius: 0.2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(50),
                              blurRadius: 8,
                              offset: const Offset(4, 4),
                            ),
                          ],
                        ),
                        iconTheme: IconThemeData(
                          color: Colors.white,
                          size: 20.r,
                        ),
                      ),
                      footerItems: [
                        SidebarXItem(
                          iconBuilder: (selected, hovered) => buildMenuIcon(
                            selected: selected,
                            hovered: hovered,
                            assetPath: Assets.icons.png.sideMenuSettings.path,
                          ),
                        ),
                      ],
                      /* extendedTheme: SidebarXTheme(
                          width: 200,
                          decoration: BoxDecoration(color: canvasColor),
                          margin: const EdgeInsets.only(right: 10),
                        ), */
                      footerDivider: Divider(
                        color: AppColors.white.withOpacity(0.3),
                        height: 1,
                      ),
                      showToggleButton: false,

                      headerBuilder: (context, extended) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: 8.r,
                            right: 8.r,
                            top: 20.r,
                            bottom: 24.r,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primary.withAlpha(150),
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset(
                              Assets.images.logo.logo2.path,
                              width: 12.w,
                            ),
                          ),
                        );
                      },
                      items: [
                        SidebarXItem(
                          iconBuilder: (selected, hovered) => buildMenuIcon(
                            selected: selected,
                            hovered: hovered,
                            assetPath: Assets.icons.png.sideMenuDashboard.path,
                          ),
                          onTap: () {
                            context.read<SidebarXCubit>().setSelectedIndex(0);
                            context.goNamed(HomeScreen.routeName);
                          },
                        ),
                        SidebarXItem(
                          iconBuilder: (selected, hovered) => buildMenuIcon(
                            selected: selected,
                            hovered: hovered,
                            assetPath: Assets.icons.png.sideMenuRoom.path,
                          ),
                          onTap: () {
                            context.read<SidebarXCubit>().setSelectedIndex(1);
                            context.goNamed(RoomsScreen.routeName);
                          },
                        ),
                        /* SidebarXItem(
                            iconBuilder: (selected, hovered) => buildMenuIcon(
                              selected: selected,
                              hovered: hovered,
                              assetPath: Assets.icons.png.sideMenuLesson.path,
                            ),
                            onTap: () => context.goNamed(LessonsScreen.routeName),
                          ), */
                        if (visibleAccountsTab) ...[
                          SidebarXItem(
                            iconBuilder: (selected, hovered) => FadeInRight(
                              key: const ValueKey('accounts-tab'),
                              from: 10,
                              duration: Durations.medium1,
                              child: buildMenuIcon(
                                selected: selected,
                                hovered: hovered,
                                assetPath:
                                    Assets.icons.png.sideMenuProfile.path,
                                iconSize: 14.r,
                              ),
                            ),
                            onTap: () {
                              context.read<SidebarXCubit>().setSelectedIndex(2);
                              context.goNamed(AccountsScreen.routeName);
                            },
                          ),
                        ],
                      ],
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 24.h,
                          bottom: 24.h,
                          right: 8.w,
                        ),
                        child: Column(
                          children: [
                            GlassContainer.frostedGlass(
                              height: 20.w,
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 4.w,
                              ),
                              borderColor: Colors.transparent,
                              borderRadius: BorderRadius.circular(8.r),
                              frostedOpacity: 1,
                              /* gradient: LinearGradient(
                                  colors: [
                                    AppColors.white.withAlpha(100),
                                    AppColors.white.withAlpha(50),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ), */
                              elevation: 100,
                              child: Row(
                                children: [
                                  BlocBuilder<
                                    FirebaseAuthBloc,
                                    FirebaseAuthState
                                  >(
                                    builder: (context, state) {
                                      final name = state.maybeWhen(
                                        orElse: () => 'User',
                                        authenticated:
                                            (user, userModel, signInType) =>
                                                user.displayName ?? 'User',
                                      );

                                      return Text(
                                        'Hello $name!'.toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.getStyle(
                                          AppTextStyle.headline5,
                                          modifier: (base) => base.copyWith(
                                            // fontSize: 8.sp,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.sp,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  const Spacer(),
                                  BlocBuilder<
                                    FirebaseAuthBloc,
                                    FirebaseAuthState
                                  >(
                                    builder: (context, state) {
                                      final user = state.maybeWhen(
                                        orElse: () => null,
                                        authenticated:
                                            (user, userModel, signInType) =>
                                                user,
                                      );

                                      return CircleAvatar(
                                        radius: 11.r,
                                        backgroundColor: AppColors.primary,
                                        child: Padding(
                                          padding: EdgeInsets.all(2.h),
                                          child: CircleAvatar(
                                            backgroundColor: AppColors.white,
                                            backgroundImage:
                                                user?.photoURL != null
                                                ? NetworkImage(user!.photoURL!)
                                                : null,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(width: 6.w),
                                  IconButton(
                                    onPressed: () => context
                                        .read<FirebaseAuthBloc>()
                                        .add(const FirebaseAuthEvent.signOut()),
                                    icon: Image.asset(
                                      Assets.icons.png.logout.path,
                                      color: AppColors.primary,
                                      width: 8.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(child: widget.child),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildMenuIcon({
    required bool selected,
    required bool hovered,
    required String assetPath,
    double? iconSize,
  }) {
    Color iconColor;
    final iconWidth = iconSize ?? 12.r;

    if (selected) {
      iconColor = AppColors.white;
    } else if (hovered) {
      iconColor = AppColors.primary.shade200;
    } else {
      iconColor = AppColors.white;
    }

    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Image.asset(assetPath, color: iconColor, width: iconWidth),
    );
  }
}
