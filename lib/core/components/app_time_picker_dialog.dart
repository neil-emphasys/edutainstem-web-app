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

  @override
  Widget build(BuildContext context) {
    return Dialog(
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
              const SizedBox(height: 20),

              SizedBox(
                height: 250,
                child: WheelSlider.number(
                  totalCount: 12,
                  initValue: selectedTime,
                  interval: widget.interval,
                  allowPointerTappable: true,
                  pointerColor: AppColors.primary.withAlpha(50),
                  pointerWidth: 8.sp,
                  pointerHeight: double.infinity,
                  showPointer: true,
                  unSelectedNumberStyle: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
                  ),
                  currentIndex: selectedTime,
                  onValueChanged: (val) {
                    setState(() {
                      selectedTime = int.tryParse(val.toString()) ?? 0;
                    });
                  },
                  hapticFeedbackType: HapticFeedbackType.heavyImpact,
                  horizontal: false,
                ),
              ),

              const SizedBox(height: 24),

              Align(
                alignment: Alignment.centerRight,
                child: AppButton(
                  title: 'Select',
                  onPressed: () {
                    context.pop();
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
