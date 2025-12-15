import 'package:auto_size_text/auto_size_text.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RoomQuizPollWidget extends StatelessWidget {
  final Map<DifficultyEnum, List<PollChoiceGroup>> exams;
  final RoomModel room;

  const RoomQuizPollWidget({
    super.key,
    required this.exams,
    required this.room,
  });

  // int get total => choices.fold(0, (sum, c) => sum + c.count);

  TextStyle get style => AppTextStyles.getStyle(
    AppTextStyle.bodySmall,
    modifier: (base) =>
        base.copyWith(fontWeight: FontWeight.bold, letterSpacing: 0.3.sp),
  );

  TextStyle get styleLeadingString => AppTextStyles.getStyle(
    AppTextStyle.overline,
    modifier: (base) => base.copyWith(letterSpacing: 0.2.sp, fontSize: 2.sp),
  );
  TextStyle get stylePercentage => AppTextStyles.getStyle(
    AppTextStyle.overline,
    modifier: (base) => base.copyWith(
      letterSpacing: 0.2.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final totalStudents = room.studentsEnrolled.entries.length;
    final totalStudentsFinishedAssessment = room.studentsEnrolled.entries
        .map((e) => e.value.assessment.isNotEmpty)
        .length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            '$totalStudentsFinishedAssessment / $totalStudents Students are Done Answering Assessments',
            style: AppTextStyles.getStyle(
              AppTextStyle.bodySmall,
              modifier: (base) => base.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 0.3.sp,
                color: AppColors.white,
              ),
            ).copyWith(color: AppColors.primary),
            textAlign: TextAlign.center,
          ),
        ),
        for (final o in exams.entries) ...[
          if (o.value.isNotEmpty) ...[
            SizedBox(height: 16.h),
            Text(
              o.key.name.toUpperCase(),
              style: AppTextStyles.getStyle(
                AppTextStyle.subtitle2,
                modifier: (base) => base.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5.sp,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),
              decoration: BoxDecoration(
                color: _diffColor(o.key),
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
              ),
              child: Column(
                children: [
                  for (final PollChoiceGroup i in o.value) ...[
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 6.w,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.diamondBlue.shade50,
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${o.value.indexOf(i) + 1}. ${i.question}',
                            style: style,
                          ),
                          SizedBox(height: 16.h),
                          for (final PollChoice o in i.choices) ...[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Builder(
                                  builder: (context) {
                                    double getPercentWhole(
                                      int total,
                                      int count,
                                    ) {
                                      if (total == 0) return 0.0;
                                      final percent = (count / total) * 100;
                                      return double.parse(
                                        percent.toStringAsFixed(2),
                                      );
                                    }

                                    double getPercent(int total, int count) {
                                      if (total == 0) return 0.0;
                                      final percent = (count / total);
                                      return double.parse(
                                        percent.toStringAsFixed(2),
                                      );
                                    }

                                    final index = i.choices.indexOf(o);

                                    final int total = i.choices.fold(
                                      0,
                                      (sum, c) => sum + c.count,
                                    );

                                    final double percentage = getPercent(
                                      total,
                                      o.count,
                                    );
                                    final double percentageWhole =
                                        getPercentWhole(total, o.count);

                                    final String leadingString =
                                        _getLeadingString(index, type: i.type);

                                    return Row(
                                      children: [
                                        SizedBox(
                                          width: 40,
                                          child: AutoSizeText(
                                            leadingString,
                                            overflow: TextOverflow.clip,
                                            wrapWords: false,
                                            // softWrap: false,
                                            // style: styleLeadingString,
                                            maxLines: 2,
                                            minFontSize: 1.5.sp,
                                            maxFontSize: 3.sp,
                                            stepGranularity: 0.5.sp,
                                            style: const TextStyle().copyWith(
                                              color: (o.isAnswer)
                                                  ? AppColors.primary.shade400
                                                  : AppColors.black,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 2.w),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              LinearPercentIndicator(
                                                lineHeight: 24,
                                                percent: percentage,
                                                backgroundColor: (o.isAnswer)
                                                    ? AppColors.primary.shade400
                                                    : AppColors.gray.shade200,
                                                progressColor:
                                                    o.color ?? _palette[index],
                                                animation: true,
                                                animationDuration: 250,
                                                curve:
                                                    Easing.standardDecelerate,
                                                barRadius: Radius.circular(
                                                  16.r,
                                                ),
                                                center: Text(
                                                  '$percentageWhole %',
                                                  style: stylePercentage,
                                                ),
                                              ),
                                              if (o.subLabel != null) ...[
                                                SizedBox(height: 4.h),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 3.w,
                                                  ),
                                                  child: Text(
                                                    o.subLabel ?? '',
                                                    style: styleLeadingString,
                                                  ),
                                                ),
                                              ],
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                if (i.choices.last != o) ...[
                                  SizedBox(height: 8.h),
                                ],
                              ],
                            ),
                          ],
                        ],
                      ),
                    ),

                    if (o.value.last != i) ...[SizedBox(height: 40.h)],
                  ],
                ],
              ),
            ),
          ],
        ],
      ],
    );
  }

  Color _diffColor(DifficultyEnum difficulty) {
    switch (difficulty) {
      case DifficultyEnum.basic:
        return AppColors.cyanCornflowerBlue.shade50;
      case DifficultyEnum.intermediate:
        return AppColors.maroon.shade50;
      case DifficultyEnum.advance:
        return AppColors.tigerEyeOrange.shade50;
      default:
        return AppColors.yankeesBlue.shade50;
    }
  }

  List<Color> get _palette {
    return [
      AppColors.cyanCornflowerBlue,
      AppColors.maroon,
      AppColors.tigerEyeOrange,
      AppColors.yankeesBlue,
      AppColors.tertiary,
    ];
  }

  String _getLeadingString(int index, {required QuestionTypesEnum type}) {
    switch (type) {
      case QuestionTypesEnum.multipleChoice:
        return switch (index) {
          0 => 'A',
          1 => 'B',
          2 => 'C',
          3 => 'D',
          _ => 'Unknown',
        };

      case QuestionTypesEnum.trueOrFalse:
        return switch (index) {
          0 => 'True',
          1 => 'False',
          _ => 'Unknown', // Fallback if index > 1
        };
      case QuestionTypesEnum.likertScale:
        return switch (index) {
          0 => 'Strongly Disagree',
          1 => 'Disagree',
          2 => 'Neutral',
          3 => 'Agree',
          4 => 'Strongly Agree',
          _ => 'Unknown', // Fallback for out-of-range index
        };

      default:
        return 'Unknown';
    }
  }
}
