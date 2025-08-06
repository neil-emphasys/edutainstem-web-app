import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return AlertDialog(
      title: Text(
        'Select Time',
        style: AppTextStyles.getStyle(
          AppTextStyle.subtitle2,
          modifier: (base) =>
              base.copyWith(fontWeight: FontWeight.bold, letterSpacing: 0.3.sp),
        ),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 24.h),

      content: SizedBox(
        height: 250,
        child: WheelSlider.number(
          // perspective: 1,
          // interval: 1,
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
            debugPrint('VAL: $val');

            setState(() {
              selectedTime = int.tryParse(val.toString()) ?? 0;
            });
          },
          hapticFeedbackType: HapticFeedbackType.heavyImpact,
          horizontal: false,
        ),
      ),
      actions: [
        AppButton(
          // width: 56.w,
          title: 'Select',
          onPressed: () => widget.onPicked(selectedTime),
        ),
      ],
    );
  }
}
