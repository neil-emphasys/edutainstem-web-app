import 'package:edutainstem/application/rooms/room_bloc/room_bloc.dart';
import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/firebase_options.dart';
import 'package:edutainstem/injection.dart' as di;
import 'package:edutainstem/presentation/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion/motion.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  await Motion.instance.initialize();

  await di.init();

  final GoRouter router =
      await Routes.getRouter(); // Get the router dynamically
  runApp(MainApp(router: router));
}

class MainApp extends StatelessWidget {
  const MainApp({required this.router, super.key});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.it<RoomBloc>()),
        BlocProvider(create: (_) => di.it<RoomCreateBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (_, child) {
          return MaterialApp.router(
            routerConfig: router,

            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // primaryColor: AppColors.primary,
              colorSchemeSeed: AppColors.primary,
              // fontFamily: FontFamily.roboto,
              textTheme: GoogleFonts.robotoTextTheme(),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            builder: EasyLoading.init(
              builder: (context, child) => KeyboardVisibilityProvider(
                child: KeyboardDismissOnTap(
                  child: child ?? const SizedBox.shrink(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
