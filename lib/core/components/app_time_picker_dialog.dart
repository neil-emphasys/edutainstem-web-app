import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:wheel_slider/wheel_slider.dart';

class AppTimePickerDialog extends StatefulWidget {
  final Function(int) onPicked;
  final int totalCount;
  final num? interval;

  const AppTimePickerDialog({
    super.key,
    required this.onPicked,
    required this.totalCount,
    this.interval,
  });

  @override
  State<AppTimePickerDialog> createState() => _AppTimePickerDialogState();
}

class _AppTimePickerDialogState extends State<AppTimePickerDialog> {
  int selectedTime = 0;

  static const int _intervalMinutes = 15;
  static const int _maxMinutes = 180; // 3 hours
  static const int _totalItems = _maxMinutes ~/ _intervalMinutes; // 12 items

  String formatMinutes(int minutes) {
    if (minutes < 60) {
      return '$minutes minutes';
    }

    final hours = minutes ~/ 60;
    final remainingMinutes = minutes % 60;

    if (remainingMinutes == 0) {
      return hours == 1 ? '1 hour' : '$hours hours';
    }

    return hours == 1
        ? '1 hour, $remainingMinutes minutes'
        : '$hours hours, $remainingMinutes minutes';
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.background,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 280,
          maxWidth: 360, // cap width for larger screens
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Select Time',
                style: AppTextStyles.getStyle(
                  AppTextStyle.subtitle2,
                  modifier: (base) => base.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3.sp,
                  ),
                ),
              ),
              const SizedBox(height: 32),

              SizedBox(
                height: 250,
                child: WheelSlider.customWidget(
                  totalCount: _totalItems, // 12 → up to 3 hours
                  initValue:
                      selectedTime ~/ _intervalMinutes, // index, not minutes
                  allowPointerTappable: true,
                  // pointerColor: AppColors.primary.withAlpha(50),
                  // pointerWidth: 40.h,
                  // pointerHeight: double.infinity,
                  verticalListHeight: 230,
                  listHeight: 230,
                  customPointer: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: double.infinity,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withAlpha(100),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  background: Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.background,
                          AppColors.white,
                          AppColors.background,
                        ],
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          // Top dark inset
                          const BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 0),
                            // blurRadius: 6,
                            spreadRadius: -3,
                          ),
                          // Bottom light inset
                          BoxShadow(
                            color: AppColors.diamondBlue.shade100,
                            offset: const Offset(0, 0),
                            blurRadius: 6,
                            spreadRadius: -3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemSize: 48.h,
                  showPointer: true,
                  hapticFeedbackType: HapticFeedbackType.heavyImpact,
                  horizontal: false,

                  onValueChanged: (index) {
                    setState(() {
                      debugPrint(
                        '((INDEX + 1) * _INTERVALMINUTES): ${((index + 1) * _intervalMinutes)}',
                      );
                      if (((index + 1) * _intervalMinutes) == 0) {
                        selectedTime = _intervalMinutes;
                      } else {
                        selectedTime = ((index + 1) * _intervalMinutes);
                      }
                    });
                  },

                  children: List.generate(_totalItems, (index) {
                    final minutes = (index + 1) * _intervalMinutes;

                    return Center(
                      child: Text(
                        formatMinutes(minutes),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.getStyle(
                          AppTextStyle.bodySmall,
                          modifier: (base) => base.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3.sp,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),

              const SizedBox(height: 40),

              Align(
                alignment: Alignment.centerRight,
                child: AppButton(
                  title: 'Select',
                  onPressed: () {
                    context.pop();

                    if (selectedTime == 0) {
                      selectedTime = _intervalMinutes;
                    }

                    widget.onPicked(selectedTime);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
