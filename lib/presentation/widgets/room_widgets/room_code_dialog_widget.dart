import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uuid/v8.dart';

class RoomCodeDialogWidget extends StatefulWidget {
  const RoomCodeDialogWidget({super.key});

  @override
  State<RoomCodeDialogWidget> createState() => _RoomCodeDialogWidgetState();
}

class _RoomCodeDialogWidgetState extends State<RoomCodeDialogWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final blocInstance = RoomCreateBloc();

    return Center(
      child: SingleChildScrollView(
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          child: BlocBuilder<RoomCreateBloc, RoomCreateState>(
            bloc: blocInstance,
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                initial: (data) => Container(
                  // color: Colors.red,
                  // constraints: BoxConstraints(minHeight: 0.6.sh),
                  width: 0.5.sw,
                  padding: EdgeInsets.symmetric(
                    vertical: 16.r,
                    horizontal: 20.r,
                  ),
                  child: Column(
                    // shrinkWrap: true,

                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => context.pop(),
                                icon: Image.asset(
                                  Assets.icons.png.goBack.path,
                                  width: 4.w,
                                ),
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                'Join Room',
                                style: AppTextStyles.getStyle(
                                  AppTextStyle.bodySmall,
                                  modifier: (base) => base.copyWith(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.3.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Join Via Code',
                                  style: AppTextStyles.getStyle(
                                    AppTextStyle.subtitle1,
                                    modifier: (base) => base.copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.3.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                Container(
                                  width: 60.sp,
                                  height: 80.sp,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(16.r),
                                  decoration: BoxDecoration(
                                    color: AppColors.gray.shade50,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.r),
                                    ),
                                  ),
                                  child: Text(
                                    '123ABC',
                                    style: AppTextStyles.getStyle(
                                      AppTextStyle.headline3,
                                      modifier: (base) => base.copyWith(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.3.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'Join Via QR Code',
                                  style: AppTextStyles.getStyle(
                                    AppTextStyle.subtitle1,
                                    modifier: (base) => base.copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.3.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                Container(
                                  width: 60.sp,
                                  height: 80.sp,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(16.r),
                                  decoration: BoxDecoration(
                                    color: AppColors.gray.shade50,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.r),
                                    ),
                                  ),
                                  child: QrImageView(
                                    data: const UuidV8().generate(),
                                    version: QrVersions.auto,
                                    size: 200.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 80.h),
                      AppButton(
                        title: 'Close Room',
                        backgroundColor: AppColors.red,
                        onPressed: () =>
                            blocInstance.add(const RoomCreateEvent.nextStep()),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
