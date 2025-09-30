import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class AppDropdownField extends StatefulWidget {
  const AppDropdownField({
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
    this.isFieldTitleSeparated = false,
    this.fieldType = AppTextFormFieldType.filled,
    this.hintText,
    this.isMultiline = false,
    this.primaryColor,
    this.focusedColor,
    this.isPasswordValidator = false,
    this.hasStrengthIndicator = false,
    this.hasValidationRules = false,
    this.initialValue,
    this.dropdownItems = const [],
    this.onChanged,
    this.enabled = true,
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
  final bool isFieldTitleSeparated;
  final AppTextFormFieldType fieldType;
  final String? hintText;
  final bool isMultiline;
  final Color? primaryColor;
  final Color? focusedColor;
  final bool isPasswordValidator;
  final bool hasStrengthIndicator;
  final bool hasValidationRules;
  final String? initialValue;
  final List<String> dropdownItems;
  final void Function(String)? onChanged;
  final bool enabled;

  @override
  State<AppDropdownField> createState() => _AppDropdownFieldState();

  factory AppDropdownField.secondary({
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
    bool isFieldTitleSeperated = false,
    String? hintText,
    bool isMultiline = false,
    Key? key,
    bool isPasswordValidator = false,
    bool hasStrengthIndicator = false,
    bool hasValidationRules = false,
    String? initialValue,
    List<String> dropdownItems = const [],
    void Function(String)? onChanged,
    bool enabled = true,
  }) {
    return AppDropdownField(
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
      isFieldTitleSeparated: isFieldTitleSeperated,
      fieldType: AppTextFormFieldType.outlined,
      hintText: hintText,
      isMultiline: isMultiline,
      primaryColor: AppColors.secondary,
      focusedColor: AppColors.primary,
      isPasswordValidator: isPasswordValidator,
      hasStrengthIndicator: hasStrengthIndicator,
      hasValidationRules: hasValidationRules,
      initialValue: initialValue,
      dropdownItems: dropdownItems,
      onChanged: onChanged,
      enabled: enabled,
    );
  }
}

class _AppDropdownFieldState extends State<AppDropdownField> {
  /// Default values
  Color defaultFieldTitleColorOutlined = AppColors.white;
  Color defaultFieldTitleColorFilled = AppColors.secondary;
  double defaultSpacing = 8.h;
  bool defaultObscureTextStatus = false;
  double defaultEnabledBorderWidth = 0.5.sp;
  double defaultFocusedBorderWidth = 1.sp;
  double defaultBorderRadius = 6.r;
  double defaultContentPaddingHorizontal = 12.w;
  double defaultContentPaddingVertical = 10.h;
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
  }

  @override
  void dispose() {
    fieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isFieldTitleSeparated)
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
        DropdownButtonFormField2<String>(
          // focusNode: fieldFocusNode,
          isExpanded: true,
          isDense: true,
          style:
              widget.style ??
              switch (widget.fieldType) {
                AppTextFormFieldType.outlined => const TextStyle(
                  color: AppColors.white,
                ),
                AppTextFormFieldType.filled => const TextStyle(
                  color: AppColors.black,
                ),
              },
          decoration: switch (widget.fieldType) {
            AppTextFormFieldType.outlined => InputDecoration(
              labelText: !(widget.isFieldTitleSeparated)
                  ? widget.fieldTitle
                  : null,
              labelStyle: TextStyle(
                color: widget.primaryColor ?? AppColors.primary.shade100,
              ),
              hintText: widget.hintText,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              floatingLabelStyle: TextStyle(
                color: widget.primaryColor ?? AppColors.primary,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.primaryColor ?? AppColors.primary,
                  width: defaultEnabledBorderWidth,
                ),
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.focusedColor ?? AppColors.primary,
                  width: defaultFocusedBorderWidth,
                ),
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: defaultFocusedBorderWidth,
                ),
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: defaultFocusedBorderWidth,
                ),
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              focusColor: widget.focusedColor ?? AppColors.primary,
              // filled: true,
              // fillColor: AppColors.background, // Same as background
              contentPadding: EdgeInsets.symmetric(
                vertical: defaultContentPaddingVertical,
                horizontal: defaultContentPaddingHorizontal,
              ),
            ),
            AppTextFormFieldType.filled => InputDecoration(
              labelText: !(widget.isFieldTitleSeparated)
                  ? widget.fieldTitle
                  : null,
              labelStyle: TextStyle(
                color: widget.primaryColor ?? AppColors.primary.shade100,
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
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                /* borderSide: BorderSide(
                              color: widget.focusedColor ?? AppColors.tertiary,
                              width: defaultFocusedBorderWidth,
                            ), */
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              errorStyle: AppTextStyles.getStyle(
                AppTextStyle.overline,
                modifier: (base) => base.copyWith(
                  // fontWeight: FontWeight.bold,
                  letterSpacing: 0.3.sp,
                  color: AppColors.red,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: defaultFocusedBorderWidth,
                ),
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.red,
                  width: defaultFocusedBorderWidth,
                ),
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
              focusColor: widget.focusedColor ?? AppColors.primary.shade50,
              filled: true,
              fillColor: fieldFocusNode.hasFocus
                  ? widget.primaryColor ?? AppColors.primary.shade50
                  : AppColors.gray.shade50, // Same as background
              // contentPadding: EdgeInsets.symmetric(
              //   vertical: defaultContentPaddingVertical,
              //   horizontal: defaultContentPaddingHorizontal,
              // ),
            ),
          },
          hint: Text(
            widget.hintText ?? '',
            style: const TextStyle(fontSize: 14, color: AppColors.gray),
          ),
          value: widget.initialValue,
          items: widget.dropdownItems
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style:
                        AppTextStyles.getStyle(
                          AppTextStyle.bodyNormal,
                          modifier: (base) => base.copyWith(
                            // fontSize: 12.sp,
                            letterSpacing: 0.5.sp,
                          ),
                        ).copyWith(
                          color: widget.enabled
                              ? fieldFocusNode.hasFocus
                                    ? AppColors.primary
                                    : widget.fieldTitleColor ?? AppColors.black
                              : AppColors.gray,
                        ),
                  ),
                ),
              )
              .toList(),
          validator: widget.validator,
          onChanged: widget.enabled
              ? (value) {
                  if (widget.onChanged != null) {
                    widget.onChanged!(value ?? '');
                  }

                  if (widget.controller != null) {
                    widget.controller?.text = value ?? '';
                    debugPrint(
                      'WIDGET.CONTROLLER?.TEXT: ${widget.controller?.text}',
                    );
                  }
                }
              : null,
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.only(right: 0),
          ),
          iconStyleData: IconStyleData(
            icon: const HugeIcon(
              icon: HugeIcons.strokeRoundedArrowDown01,
              color: AppColors.black,
            ),
            iconSize: 32.h,
          ),
          dropdownStyleData: DropdownStyleData(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          ),
          menuItemStyleData: MenuItemStyleData(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
          ),
          // selectedItemBuilder: (context) {
          //   return widget.dropdownItems
          //       .map(
          //         (item) => Padding(
          //           padding: EdgeInsets.symmetric(
          //             vertical: 16.h,
          //             horizontal: 16.w,
          //           ),
          //           child: Text(
          //             item,
          //             style:
          //                 AppTextStyles.getStyle(
          //                   AppTextStyle.overline,
          //                   // modifier: (base) =>
          //                   //     base.copyWith(fontSize: 14.sp, letterSpacing: 1.sp),
          //                 ).copyWith(
          //                   /* color: widget.enabled
          //                       ? fieldFocusNode.hasFocus
          //                             ? AppColors.primary
          //                             : widget.fieldTitleColor ??
          //                                   AppColors.black
          //                       : AppColors.black, */
          //                 ),
          //           ),
          //         ),
          //       )
          //       .toList();
          // },
        ),
      ],
    );
  }
}
