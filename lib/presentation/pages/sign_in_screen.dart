import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/presentation/pages/home_screen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign-in';

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alpha = 10;

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
          Positioned(
            left: 5,
            top: 5,
            child: Image.asset(Assets.images.logo.logo.path, width: 24.w),
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
                  Text(
                    'Welcome Back!'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: AppTextStyles.getStyle(
                      AppTextStyle.headline3,
                      modifier: (base) => base.copyWith(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.sp,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.w),
                  Text(
                    'Enter your credentials to login',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.getStyle(
                      AppTextStyle.bodySmall,
                      modifier: (base) => base.copyWith(),
                    ),
                  ),
                  SizedBox(height: 10.w),
                  AppTextFormField(
                    fieldTitle: 'Email'.toUpperCase(),
                    fieldType: AppTextFormFieldType.filled,
                    isFieldTitleSeperated: true,
                  ),
                  SizedBox(height: 6.w),
                  AppTextFormField(
                    fieldTitle: 'Password'.toUpperCase(),
                    fieldType: AppTextFormFieldType.filled,
                    isFieldTitleSeperated: true,
                    obscureText: true,
                  ),
                  SizedBox(height: 10.w),
                  AppButton(
                    title: 'Login',
                    useAnimatedGradient: true,
                    onPressed: () => context.goNamed(HomeScreen.routeName),
                  ),
                  SizedBox(height: 4.w),
                  AppButton(
                    backgroundColor: AppColors.primary.shade50,
                    title: 'Login With Google',
                    textStyle: AppButton.getDefaultTextStyle.copyWith(
                      color: AppColors.primary,
                    ),
                    onPressed: () {},
                    hasIcon: true,
                    buttonIconSpacing: 4.w,
                    icon: Image.asset(
                      Assets.icons.png.google.path,
                      width: 6.sp,
                      // semanticsLabel: 'Dart Logo',
                    ),
                  ),

                  SizedBox(height: 10.w),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account? ",
                            style: AppTextStyles.getStyle(
                              AppTextStyle.bodySmall,
                              modifier: (base) => base.copyWith(),
                            ),
                          ),
                          TextSpan(
                            text: 'Sign Up',
                            style:
                                AppTextStyles.getStyle(
                                  AppTextStyle.bodySmall,
                                ).copyWith(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
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
