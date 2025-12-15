import 'package:edutainstem/application/sign_up/bloc/sign_up_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_dropdown_field.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/enums/language_enum.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/core/helpers/string_helpers.dart';
import 'package:edutainstem/core/services/dialog_services.dart';
import 'package:edutainstem/core/services/validator_service.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/presentation/pages/sign_up_done_screen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final validator = it<ValidatorService>();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final preferredLanguageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final alpha = 10;

    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.whenOrNull(
          signedUp: (user) => context.goNamed(SignUpDoneScreen.routeName),
          error: (title, message) => it<DialogService>().showGiffyDialog(
            context,
            type: GiffyDialogType.error,
            title: title,
            content: message,
          ),
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
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 10.w,
                  ),
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
                      children: [
                        Text(
                          'Sign Up'.toUpperCase(),
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
                          'Please fill in your details',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.getStyle(
                            AppTextStyle.bodySmall,
                            modifier: (base) => base.copyWith(),
                          ),
                        ),
                        SizedBox(height: 10.w),
                        AppTextFormField(
                          fieldTitle: 'First Name',
                          controller: firstNameController,
                          fieldType: AppTextFormFieldType.filled,
                          isFieldTitleSeparated: true,
                          validator: validator.compose([
                            validator.required(fieldName: 'First Name'),
                          ]),
                          // onChanged: (p0) => context.read<SignUpBloc>().add(
                          //   SignUpEvent.dataChanged(firstName: p0),
                          // ),
                        ),
                        SizedBox(height: 24.h),
                        AppTextFormField(
                          fieldTitle: 'Last Name',
                          controller: lastNameController,
                          fieldType: AppTextFormFieldType.filled,
                          isFieldTitleSeparated: true,
                          validator: validator.compose([
                            validator.required(fieldName: 'Last Name'),
                          ]),
                          // onChanged: (p0) => context.read<SignUpBloc>().add(
                          //   SignUpEvent.dataChanged(lastName: p0),
                          // ),
                        ),
                        SizedBox(height: 24.h),
                        AppTextFormField(
                          fieldTitle: 'Email',
                          controller: emailController,
                          fieldType: AppTextFormFieldType.filled,
                          isFieldTitleSeparated: true,
                          validator: validator.compose([
                            validator.required(fieldName: 'Email'),
                            validator.email(),
                          ]),
                          // onChanged: (p0) => context.read<SignUpBloc>().add(
                          //   SignUpEvent.dataChanged(email: p0),
                          // ),
                        ),
                        SizedBox(height: 24.h),
                        AppTextFormField(
                          fieldTitle: 'Password',
                          controller: passwordController,
                          fieldType: AppTextFormFieldType.filled,
                          isFieldTitleSeparated: true,
                          obscureText: true,
                          validator: validator.compose([
                            validator.required(fieldName: 'Password'),
                            validator.password(),
                          ]),
                          // onChanged: (p0) => context.read<SignUpBloc>().add(
                          //   SignUpEvent.dataChanged(password: p0),
                          // ),
                        ),
                        SizedBox(height: 24.h),
                        AppTextFormField(
                          fieldTitle: 'Confirm Password',
                          controller: confirmPasswordController,
                          fieldType: AppTextFormFieldType.filled,
                          isFieldTitleSeparated: true,
                          obscureText: true,
                          validator: validator.compose([
                            validator.required(fieldName: 'Confirm Password'),
                            validator.matches(passwordController),
                          ]),
                        ),
                        SizedBox(height: 24.h),
                        AppDropdownField(
                          fieldTitle: 'Preferred Language',
                          controller: preferredLanguageController,
                          fieldType: AppTextFormFieldType.filled,
                          isFieldTitleSeparated: true,
                          dropdownItems: LanguageEnum.values
                              .map((e) => e.name.toString().capitalize())
                              .toList(),
                          validator: validator.compose([
                            validator.required(fieldName: 'Preferred Language'),
                          ]),
                          /* onChanged: (p0) => context.read<SignUpBloc>().add(
                              SignUpEvent.dataChanged(
                                preferredLanguage: LanguageEnum.fromString(p0),
                              ),
                            ), */
                        ),
                        SizedBox(height: 10.w),
                        AppButton(
                          title: 'Sign Up',
                          onPressed: () {
                            if (formKey.currentState?.validate() ?? false) {
                              context.read<SignUpBloc>().add(
                                SignUpEvent.signUp(
                                  user: UserModel.initial().copyWith(
                                    firstName: firstNameController.text,
                                    lastName: lastNameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    preferredLanguage: LanguageEnum.fromString(
                                      preferredLanguageController.text,
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
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
