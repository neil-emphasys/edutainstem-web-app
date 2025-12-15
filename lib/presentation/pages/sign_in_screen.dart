import 'package:edutainstem/application/auth/bloc/firebase_auth_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/core/services/toastification_service.dart';
import 'package:edutainstem/core/services/validator_service.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/presentation/pages/sign_up_screen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/sign-in';

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final alpha = 10;

  final validator = it<ValidatorService>();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? _emailServerError;
  String? _passwordServerError;

  final toast = it<ToastificationService>();

  void _reset() {
    setState(() {
      _emailServerError = null;
      _passwordServerError = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FirebaseAuthBloc, FirebaseAuthState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) {
            if (!context.mounted) return;

            // TODO: Smartly map the message to a specific field.
            // Example: wrong password → password field, user-not-found → email.
            setState(() {
              _passwordServerError = '';
              _emailServerError = 'Authentication Failed';
            });

            // Re-run all validators so TextFormField shows red error
            formKey.currentState?.validate();
            toast.error(message, context: context);

            passwordController.clear();
          },
          orElse: () {
            // Optional: clear errors on non-error states
            if (!context.mounted) return;
            setState(() {
              _emailServerError = null;
              _passwordServerError = null;
            });
          },
        );
      },
      child: Scaffold(
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
                child: Form(
                  key: formKey,
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
                        fieldTitle: 'Email',
                        fieldType: AppTextFormFieldType.filled,
                        isFieldTitleSeparated: true,
                        controller: emailController,
                        validator: validator.compose([
                          validator.required(fieldName: 'Email'),
                          validator.email(),
                          validator.external(() => _emailServerError),
                        ]),
                        /* onChanged: (_) {
                          if (_emailServerError != null) {
                            setState(() {
                              _emailServerError = null;
                            });
                            formKey.currentState?.validate();
                          }
                        }, */
                      ),
                      SizedBox(height: 6.w),
                      AppTextFormField(
                        fieldTitle: 'Password',
                        controller: passwordController,
                        obscureText: true,
                        fieldType: AppTextFormFieldType.filled,
                        isFieldTitleSeparated: true,
                        validator: validator.compose([
                          validator.required(fieldName: 'Password'),
                          validator.external(() => _passwordServerError),
                        ]),
                      ),
                      SizedBox(height: 10.w),
                      AppButton(
                        title: 'Login',
                        // fitContent: true,
                        // useAnimatedGradient: true,
                        onPressed: () {
                          _reset();

                          if (formKey.currentState?.validate() ?? false) {
                            context.read<FirebaseAuthBloc>().add(
                              FirebaseAuthEvent.signIn(
                                email: emailController.text,
                                password: passwordController.text,
                              ),
                            );
                          }
                        },
                      ),
                      SizedBox(height: 4.w),
                      AppButton(
                        backgroundColor: AppColors.primary.shade50,
                        title: 'Login With Google',
                        textStyle: AppButton.getDefaultTextStyle.copyWith(
                          color: AppColors.primary,
                        ),
                        onPressed: () => context.read<FirebaseAuthBloc>().add(
                          const FirebaseAuthEvent.googleSignIn(),
                        ),
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
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () =>
                                      context.goNamed(SignUpScreen.routeName),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
