import 'package:animate_do/animate_do.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    required this.fieldTitle,
    this.focusNode,
    this.controller,
    this.fieldTitleColor,
    this.fieldTitleTextStyle,
    this.style,
    this.spacing,
    this.obscureText,
    this.textInputType,
    this.textInputAction,
    this.validator,
    this.onChanged,
    this.isFieldTitleSeperated = false,
    this.fieldType = AppTextFormFieldType.outlined,
    this.hintText,
    this.isMultiline = false,
    this.primaryColor,
    this.focusedColor,
    this.isPasswordValidator = false,
    this.hasStrengthIndicator = false,
    this.hasValidationRules = false,
    this.radius,
    this.readOnly = false,
    this.onTap,
    super.key,
  });

  final String fieldTitle;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Color? fieldTitleColor;
  final TextStyle? fieldTitleTextStyle;
  final TextStyle? style;

  /// * Spacing between the title and the textfield
  final double? spacing;
  final bool? obscureText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool isFieldTitleSeperated;
  final AppTextFormFieldType fieldType;
  final String? hintText;
  final bool isMultiline;
  final Color? primaryColor;
  final Color? focusedColor;
  final bool isPasswordValidator;
  final bool hasStrengthIndicator;
  final bool hasValidationRules;
  final BorderRadius? radius;
  final bool readOnly;
  final void Function()? onTap;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();

  factory AppTextFormField.secondary({
    required String fieldTitle,
    FocusNode? focusNode,
    TextEditingController? controller,
    Color? fieldTitleColor,
    TextStyle? fieldTitleTextStyle,
    TextStyle? style,
    double? spacing,
    bool? obscureText,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
    String? Function(String?)? validator,
    void Function(String)? onChanged,
    bool isFieldTitleSeperated = false,
    String? hintText,
    bool isMultiline = false,
    Key? key,
    bool isPasswordValidator = false,
    bool hasStrengthIndicator = false,
    bool hasValidationRules = false,
  }) {
    return AppTextFormField(
      key: key,
      fieldTitle: fieldTitle,
      focusNode: focusNode,
      controller: controller,
      fieldTitleColor: fieldTitleColor,
      fieldTitleTextStyle: fieldTitleTextStyle,
      style: const TextStyle(color: AppColors.secondary),
      spacing: spacing,
      obscureText: obscureText,
      textInputType: textInputType,
      textInputAction: textInputAction,
      validator: validator,
      onChanged: onChanged,
      isFieldTitleSeperated: isFieldTitleSeperated,
      fieldType: AppTextFormFieldType.outlined,
      hintText: hintText,
      isMultiline: isMultiline,
      primaryColor: AppColors.secondary,
      focusedColor: AppColors.primary,
      isPasswordValidator: isPasswordValidator,
      hasStrengthIndicator: hasStrengthIndicator,
      hasValidationRules: hasValidationRules,
    );
  }
}

class _AppTextFormFieldState extends State<AppTextFormField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  /// Default values
  Color defaultFieldTitleColorOutlined = AppColors.white;
  Color defaultFieldTitleColorFilled = AppColors.secondary;
  double defaultSpacing = 8.h;
  bool defaultObscureTextStatus = false;
  double defaultEnabledBorderWidth = 0.5.sp;
  double defaultFocusedBorderWidth = 1.sp;
  double defaultBorderRadius = 6.r;
  double defaultContentPaddingHorizontal = 4.w;
  double defaultContentPaddingVertical = 5.w;
  TextInputType defaultTextInputType = TextInputType.text;
  TextInputAction defaultTextInputAction = TextInputAction.next;
  FocusNode fieldFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    // Add listener to track focus changes
    fieldFocusNode.addListener(() {
      setState(() {
        // Trigger rebuild when focus changes
      });
    });

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _colorAnimation = ColorTween(
      begin: AppColors.red,
      end: AppColors.tertiaryVariantOne,
    ).animate(_controller);

    // Start with 100% progress and loop for demo, or use based on strength logic
    // _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    fieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isFieldTitleSeperated)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.fieldTitle.toUpperCase(),
                maxLines: 1,
                style:
                    widget.fieldTitleTextStyle ??
                    AppTextStyles.getStyle(AppTextStyle.subtitle2).copyWith(
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.5.sp,
                      color: fieldFocusNode.hasFocus
                          ? switch (widget.fieldType) {
                              AppTextFormFieldType.outlined =>
                                AppColors.primary,
                              AppTextFormFieldType.filled => AppColors.primary,
                            }
                          : widget.fieldTitleColor ??
                                switch (widget.fieldType) {
                                  AppTextFormFieldType.outlined =>
                                    AppColors.black,
                                  AppTextFormFieldType.filled =>
                                    AppColors.black,
                                },
                    ),
              ),
              SizedBox(height: widget.spacing ?? defaultSpacing),
            ],
          ),
        SizedBox(
          height: widget.isMultiline ? 200 : null,
          child: (widget.obscureText ?? defaultObscureTextStatus)
              ? FancyPasswordField(
                  onTap: widget.onTap,
                  readOnly: widget.readOnly,
                  focusNode: fieldFocusNode,
                  controller: widget.controller,
                  style:
                      widget.style ??
                      switch (widget.fieldType) {
                        AppTextFormFieldType.outlined => const TextStyle(
                          color: AppColors.white,
                        ),
                        AppTextFormFieldType.filled => AppTextStyles.getStyle(
                          AppTextStyle.bodyNormal,
                          modifier: (base) =>
                              base.copyWith(letterSpacing: 0.5.sp),
                        ),
                      },
                  cursorColor: widget.primaryColor ?? AppColors.primary,
                  keyboardType: (widget.isMultiline)
                      ? TextInputType.multiline
                      : (widget.textInputType ?? defaultTextInputType),
                  textInputAction:
                      widget.textInputAction ?? defaultTextInputAction,
                  maxLines: (widget.isMultiline)
                      ? null
                      : 1, // Allows unlimited lines
                  expands:
                      widget.isMultiline, // Expands to fill parent constraints
                  textAlignVertical: TextAlignVertical.top,
                  hasStrengthIndicator: widget.hasStrengthIndicator,
                  hasValidationRules: widget.hasStrengthIndicator,
                  hidePasswordWidget: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: Icon(
                      FluentIcons.eye_off_16_filled,
                      color: fieldFocusNode.hasFocus
                          ? AppColors.primary
                          : AppColors.secondary,
                      size: 6.w,
                    ),
                  ),
                  showPasswordWidget: Icon(
                    FluentIcons.eye_16_filled,
                    color: fieldFocusNode.hasFocus
                        ? AppColors.primary
                        : AppColors.secondary,
                    size: 6.w,
                  ),
                  strengthIndicatorBuilder: (strength) {
                    _controller.value = strength;
                    return FadeIn(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: LinearProgressIndicator(
                          value: strength,
                          valueColor: _colorAnimation,
                          borderRadius: BorderRadius.circular(16.r),

                          // color: AppColors.secondary,
                        ),
                      ),
                    );
                  },
                  validationRuleBuilder: (rules, value) {
                    return Padding(
                      padding: EdgeInsets.all(8.w),
                      child: ListView(
                        shrinkWrap: true,
                        children: rules.map((rule) {
                          return Padding(
                            padding: EdgeInsets.only(top: 4.h),
                            child: Row(
                              children: [
                                Icon(
                                  rule.validate(value)
                                      ? FluentIcons.eye_12_regular
                                      : FluentIcons.eye_12_regular,
                                  color: rule.validate(value)
                                      ? AppColors.tertiaryVariantOne
                                      : AppColors.gray.shade200,
                                  size: 12.w,
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  rule.name,
                                  style:
                                      AppTextStyles.getStyle(
                                        AppTextStyle.bodySmall,
                                      ).copyWith(
                                        color: rule.validate(value)
                                            ? AppColors.tertiaryVariantOne
                                            : AppColors.gray.shade200,
                                        letterSpacing: 0.1,
                                      ),
                                ),
                              ],
                            ),
                          );

                          /* return rule.validate(value)
                              ? Row(
                                  children: [
                                    const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      rule.name,
                                      style: AppTextStyles.getStyle(
                                              AppTextStyle.bodySmall)
                                          .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    const Icon(
                                      Icons.close,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(width: 12),
                                    Text(
                                      rule.name,
                                      style: const TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ); */
                        }).toList(),
                      ),
                    );
                  },

                  decoration: switch (widget.fieldType) {
                    // * ====================================
                    // * ============= OUTLINED =============
                    // * ====================================
                    AppTextFormFieldType.outlined => InputDecoration(
                      labelText: !(widget.isFieldTitleSeperated)
                          ? widget.fieldTitle
                          : null,
                      labelStyle: TextStyle(
                        color:
                            widget.primaryColor ?? AppColors.primary.shade100,
                      ),
                      hintText: widget.hintText,
                      floatingLabelStyle: TextStyle(
                        color: widget.primaryColor ?? AppColors.primary,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: widget.primaryColor ?? AppColors.primary,
                          width: defaultEnabledBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: widget.focusedColor ?? AppColors.tertiary,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.red,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.red,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusColor: widget.focusedColor ?? AppColors.tertiary,
                      // filled: true,
                      // fillColor: AppColors.background, // Same as background
                      contentPadding: EdgeInsets.symmetric(
                        vertical: defaultContentPaddingVertical,
                        horizontal: defaultContentPaddingHorizontal,
                      ),
                    ),
                    // * ====================================
                    // * ============== FILLED ==============
                    // * ====================================
                    AppTextFormFieldType.filled => InputDecoration(
                      labelText: !(widget.isFieldTitleSeperated)
                          ? widget.fieldTitle
                          : null,
                      labelStyle: TextStyle(
                        color:
                            widget.primaryColor ?? AppColors.primary.shade100,
                      ),
                      hintText: widget.hintText,
                      hintStyle: AppTextStyles.getStyle(AppTextStyle.bodySmall)
                          .copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray.shade300,
                          ),
                      floatingLabelStyle: TextStyle(
                        color: widget.primaryColor ?? AppColors.primary,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        /* borderSide: BorderSide(
                          color: widget.primaryColor ?? AppColors.white,
                          width: defaultEnabledBorderWidth,
                        ), */
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        /* borderSide: BorderSide(
                          color: widget.focusedColor ?? AppColors.tertiary,
                          width: defaultFocusedBorderWidth,
                        ), */
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.red,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.red,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusColor:
                          widget.focusedColor ?? AppColors.primary.shade50,
                      filled: true,
                      fillColor: fieldFocusNode.hasFocus
                          ? widget.primaryColor ?? AppColors.primary.shade50
                          : AppColors.gray.shade50, // Same as background
                      contentPadding: EdgeInsets.symmetric(
                        vertical: defaultContentPaddingVertical,
                        horizontal: defaultContentPaddingHorizontal,
                      ),
                    ),
                  },
                  validator: widget.validator,
                  validationRules: {
                    DigitValidationRule(),
                    UppercaseValidationRule(),
                    LowercaseValidationRule(),
                    SpecialCharacterValidationRule(),
                    MinCharactersValidationRule(6),
                  },
                  onChanged: widget.onChanged,
                )
              : TextFormField(
                  readOnly: widget.readOnly,
                  onTap: widget.onTap,
                  focusNode: fieldFocusNode,
                  controller: widget.controller,
                  obscureText: widget.obscureText ?? defaultObscureTextStatus,
                  style:
                      widget.style ??
                      switch (widget.fieldType) {
                        AppTextFormFieldType.outlined => AppTextStyles.getStyle(
                          AppTextStyle.bodyNormal,
                          modifier: (base) =>
                              base.copyWith(letterSpacing: 0.5.sp),
                        ),
                        AppTextFormFieldType.filled => AppTextStyles.getStyle(
                          AppTextStyle.bodyNormal,
                          modifier: (base) =>
                              base.copyWith(letterSpacing: 0.5.sp),
                        ),
                      },
                  cursorColor: widget.primaryColor ?? AppColors.primary,
                  keyboardType: (widget.isMultiline)
                      ? TextInputType.multiline
                      : (widget.textInputType ?? defaultTextInputType),
                  textInputAction:
                      widget.textInputAction ?? defaultTextInputAction,
                  maxLines: (widget.isMultiline)
                      ? null
                      : 1, // Allows unlimited lines
                  expands:
                      widget.isMultiline, // Expands to fill parent constraints
                  textAlignVertical: TextAlignVertical.top,
                  decoration: switch (widget.fieldType) {
                    // * ====================================
                    // * ============= OUTLINED =============
                    // * ====================================
                    AppTextFormFieldType.outlined => InputDecoration(
                      labelText: !(widget.isFieldTitleSeperated)
                          ? widget.fieldTitle
                          : null,
                      labelStyle: TextStyle(
                        color:
                            widget.primaryColor ?? AppColors.primary.shade100,
                      ),
                      hintText: widget.hintText,
                      floatingLabelStyle: TextStyle(
                        color: widget.primaryColor ?? AppColors.primary,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: widget.primaryColor ?? AppColors.primary,
                          width: defaultEnabledBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: widget.focusedColor ?? AppColors.tertiary,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.red,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.red,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusColor: widget.focusedColor ?? AppColors.tertiary,
                      // filled: true,
                      // fillColor: AppColors.background, // Same as background
                      contentPadding: EdgeInsets.symmetric(
                        vertical: defaultContentPaddingVertical,
                        horizontal: defaultContentPaddingHorizontal,
                      ),
                    ),
                    // * ====================================
                    // * ============== FILLED ==============
                    // * ====================================
                    AppTextFormFieldType.filled => InputDecoration(
                      labelText: !(widget.isFieldTitleSeperated)
                          ? widget.fieldTitle
                          : null,
                      labelStyle: TextStyle(
                        color:
                            widget.primaryColor ?? AppColors.primary.shade100,
                      ),
                      hintText: widget.hintText,
                      hintStyle: AppTextStyles.getStyle(AppTextStyle.bodySmall)
                          .copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray.shade300,
                          ),
                      floatingLabelStyle: TextStyle(
                        color: widget.primaryColor ?? AppColors.primary,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        /* borderSide: BorderSide(
                          color: widget.primaryColor ?? AppColors.white,
                          width: defaultEnabledBorderWidth,
                        ), */
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        /* borderSide: BorderSide(
                          color: widget.focusedColor ?? AppColors.tertiary,
                          width: defaultFocusedBorderWidth,
                        ), */
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.red,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.red,
                          width: defaultFocusedBorderWidth,
                        ),
                        borderRadius:
                            widget.radius ??
                            BorderRadius.circular(defaultBorderRadius),
                      ),
                      focusColor:
                          widget.focusedColor ?? AppColors.primary.shade50,
                      filled: true,
                      fillColor: fieldFocusNode.hasFocus
                          ? widget.primaryColor ?? AppColors.primary.shade50
                          : AppColors.gray.shade50, // Same as background
                      contentPadding: EdgeInsets.symmetric(
                        vertical: defaultContentPaddingVertical,
                        horizontal: defaultContentPaddingHorizontal,
                      ),
                    ),
                  },
                  validator: widget.validator,
                  onChanged: widget.onChanged,
                ),
        ),
      ],
    );
  }
}

enum AppTextFormFieldType {
  outlined,
  filled;
  // dropdown;

  bool get isOutlined => this == AppTextFormFieldType.outlined;
  bool get isFilled => this == AppTextFormFieldType.filled;
  // bool get isDropdown => this == AppTextFormFieldType.dropdown;
}
