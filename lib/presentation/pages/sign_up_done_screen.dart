import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/core/services/validator_service.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/presentation/pages/sign_in_screen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class SignUpDoneScreen extends StatelessWidget {
  static const String routeName = '/sign-up-done';

  const SignUpDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alpha = 10;

    final validator = it<ValidatorService>();

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          // Background mesh gradient
          Container(
            constraints: const BoxConstraints.expand(),
            color: AppColors.white,
            child: AnimatedMeshGradient(
              colors: [
                const Color.fromARGB(255, 196, 226, 237).withAlpha(alpha),
                const Color.fromARGB(255, 241, 200, 212).withAlpha(alpha),
                const Color.fromARGB(255, 244, 212, 193).withAlpha(alpha),
                const Color.fromARGB(255, 248, 230, 202).withAlpha(alpha),
              ],
              options: AnimatedMeshGradientOptions(speed: 0.01),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.w),
              width: 120.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withAlpha(5),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      LottieBuilder.asset(
                        Assets.lottie.finished.path,
                        fit: BoxFit.cover,
                        height: 120.h,
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'You’re all set! 🚀'.toUpperCase(),
                        textAlign: TextAlign.justify,
                        style: AppTextStyles.getStyle(AppTextStyle.headline5),
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Thanks for registering! Your newly created account is still subject for approval so please wait while the admin is reviewing your account.',
                        textAlign: TextAlign.justify,
                        style: AppTextStyles.getStyle(
                          AppTextStyle.bodyNormal,
                          modifier: (base) => base.copyWith(height: 1.5.h),
                        ),
                      ),

                      SizedBox(height: 32.h),
                      AppButton(
                        title: 'Proceed',
                        height: 60.h,
                        onPressed: () {
                          context.goNamed(SignInScreen.routeName);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
