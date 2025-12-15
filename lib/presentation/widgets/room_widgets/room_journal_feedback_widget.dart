import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomJournalFeedbackWidget extends StatefulWidget {
  const RoomJournalFeedbackWidget({
    required this.blocInstance,
    required this.room,
    super.key,
  });

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  State<RoomJournalFeedbackWidget> createState() =>
      _DifficultyChartWidgetState();
}

class _DifficultyChartWidgetState extends State<RoomJournalFeedbackWidget> {
  @override
  Widget build(BuildContext context) {
    final repo = it<RoomRepository>();

    return Container(
      // color: Colors.red,
      // constraints: BoxConstraints(minHeight: 0.6.sh),
      width: 0.5.sw,
      padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
      child: Column(
        children: [
          StreamBuilder(
            stream: repo.streamJournalFeedback(widget.room.id ?? ''),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const CircularProgressIndicator();
              final either = snapshot.data!;
              return either.fold(
                (f) {
                  return Text('Error: $f');
                },
                (result) {
                  final feedbacks = result.data;

                  return feedbacks.isEmpty
                      ? Text(
                          'No feedbacks given by the students yet',
                          style: AppTextStyles.getStyle(
                            AppTextStyle.bodySmall,
                            modifier: (base) => base.copyWith(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.3.sp,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        )
                      : Column(
                          children: [
                            Text(
                              'Here are some feedbacks or journals given by the students',
                              style: AppTextStyles.getStyle(
                                AppTextStyle.bodySmall,
                                modifier: (base) => base.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3.sp,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 16.h),
                            for (final i in feedbacks) ...[
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.w,
                                  vertical: 16.h,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.diamondBlue.shade50,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.r),
                                  ),
                                ),
                                child: IntrinsicHeight(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        Assets.icons.png.quote.path,
                                        width: 8.w,
                                        color: AppColors.gray.shade100,
                                      ),
                                      VerticalDivider(
                                        thickness: 4,
                                        width: 20,
                                        color: AppColors.gray.shade100,
                                        radius: BorderRadius.all(
                                          Radius.circular(0.5.r),
                                        ),
                                      ),
                                      SizedBox(width: 2.w),
                                      Expanded(
                                        child: Text(
                                          i,
                                          style: AppTextStyles.getStyle(
                                            AppTextStyle.bodySmall,
                                            modifier: (base) => base.copyWith(
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.3.sp,
                                            ),
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.h),
                            ],
                          ],
                        );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
