import 'dart:math';

import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_glass_container.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_code_dialog_widget.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_table_widget.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion/motion.dart';

class RoomsScreen extends StatelessWidget {
  static const String routeName = '/main-dashboard/rooms';

  const RoomsScreen({super.key});

  void _showCreateNewRoomDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // dialog can't be dismissed by tapping outside
      builder: (BuildContext context) {
        // return const RoomCreateDialogWidget();
        return const RoomCodeDialogWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.w, bottom: 8.w),
      child: Column(
        // padding: EdgeInsets.symmetric(vertical: 16.w),
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Room Actions',
                  style: AppTextStyles.getStyle(
                    AppTextStyle.bodySmall,
                    modifier: (base) => base.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5.sp,
                    ),
                  ),
                ),
                SizedBox(height: 2.w),
                const Divider(color: AppColors.white),
                SizedBox(height: 2.w),
                Expanded(
                  child: Row(
                    children: [
                      Motion.only(
                        controller: MotionController(
                          damping: 0.1,
                          maxAngle: pi / 5,
                        ),
                        child: AppGlassContainer(
                          width: 40.w,
                          child: Padding(
                            padding: EdgeInsets.only(top: 2.w),
                            child: Column(
                              children: [
                                Text(
                                  'Create A New Room'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.getStyle(
                                    AppTextStyle.bodySmall,
                                    modifier: (base) => base.copyWith(
                                      color: AppColors.primary,
                                      letterSpacing: 0.5.sp,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                AppButton(
                                  title: 'Create',
                                  useAnimatedGradient: false,
                                  hasIcon: false,
                                  onPressed: () =>
                                      _showCreateNewRoomDialog(context),
                                  buttonStyle: TextButton.styleFrom(
                                    elevation: 0,
                                    visualDensity: VisualDensity.compact,
                                    backgroundColor: AppColors.primary,
                                    foregroundColor: AppColors.primary,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.r),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 0.w,
                                      vertical: 3.w,
                                    ),
                                  ),
                                  textStyle:
                                      AppTextStyles.getStyle(
                                        AppTextStyle.overline,
                                      ).copyWith(
                                        color: AppColors.white,
                                        letterSpacing: 0.6.sp,
                                        fontWeight: FontWeight.bold,
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
              ],
            ),
          ),
          SizedBox(height: 10.w),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Created Rooms',
                  style: AppTextStyles.getStyle(
                    AppTextStyle.bodySmall,
                    modifier: (base) => base.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5.sp,
                    ),
                  ),
                ),
                SizedBox(height: 2.w),
                const Divider(color: AppColors.white),
                SizedBox(height: 2.w),
                Expanded(child: RoomTableWidget()),
              ],
            ),
          ),
          /* Text(
            'Rooms Widget Here',
            style: AppTextStyles.getStyle(AppTextStyle.bodySmall),
          ), */
        ],
      ),
    );
  }
}
