import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/core/helpers/string_helpers.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RoomStudentPreAssessmentDetailsDialogWidget extends StatefulWidget {
  const RoomStudentPreAssessmentDetailsDialogWidget({
    required this.questions,
    required this.student,
    super.key,
  });

  final List<PollChoiceGroup> questions;
  final StudentEnrollmentModel student;

  @override
  State<RoomStudentPreAssessmentDetailsDialogWidget> createState() =>
      _RoomStudentPreAssessmentDetailsDialogWidgetState();
}

class _RoomStudentPreAssessmentDetailsDialogWidgetState
    extends State<RoomStudentPreAssessmentDetailsDialogWidget> {
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
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          child: Container(
            // color: Colors.red,
            // constraints: BoxConstraints(minHeight: 0.6.sh),
            width: 0.5.sw,
            padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.student.name,
                              style: AppTextStyles.getStyle(
                                AppTextStyle.bodySmall,
                                modifier: (base) => base.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3.sp,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '(Pre-Assessment Details)',
                              style: AppTextStyles.getStyle(
                                AppTextStyle.overline,
                                modifier: (base) => base.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3.sp,
                                  color: AppColors.gray,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              widget.student.difficulty.name.capitalize(),
                              style: AppTextStyles.getStyle(
                                AppTextStyle.overline,
                                modifier: (base) => base.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3.sp,
                                  color: widget.student.difficulty.toColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(height: 16.h),
                FadeIn(
                  child: Column(
                    children: [
                      for (final PollChoiceGroup i in widget.questions) ...[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.w,
                            vertical: 6.w,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.diamondBlue.shade50,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.r),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${widget.questions.indexOf(i) + 1}. ${i.question}',
                                style: style,
                              ),
                              SizedBox(height: 16.h),

                              for (final PollChoice o in i.choices) ...[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        final index = i.choices.indexOf(o);
                                        final choice = i.choices[index];
                                        final assessmentInstance = widget
                                            .student
                                            .assessment
                                            .firstWhere(
                                              (element) => element.qid == i.qid,
                                            );
                                        debugPrint(
                                          'ASSESSMENTINSTANCE: $assessmentInstance',
                                        );

                                        final isAnswer =
                                            int.parse(
                                              assessmentInstance.answerIndex,
                                            ) ==
                                            index;

                                        final String leadingString =
                                            _getLeadingString(
                                              index,
                                              type: i.type,
                                            );

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
                                                    percent: isAnswer ? 1 : 0,
                                                    backgroundColor:
                                                        AppColors.gray.shade200,
                                                    progressColor:
                                                        AppColors.primary,
                                                    animation: true,
                                                    animationDuration: 250,
                                                    curve: Easing
                                                        .standardDecelerate,
                                                    barRadius: Radius.circular(
                                                      16.r,
                                                    ),
                                                    center: isAnswer
                                                        ? Text(
                                                            'Answer',
                                                            style:
                                                                stylePercentage,
                                                          )
                                                        : null,
                                                  ),
                                                  if (o.subLabel != null) ...[
                                                    SizedBox(height: 4.h),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 3.w,
                                                      ),
                                                      child: Text(
                                                        o.subLabel ?? '',
                                                        style:
                                                            styleLeadingString,
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

                              /* for (final PollChoice o in i.choices) ...[
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

                                        double getPercent(
                                          int total,
                                          int count,
                                        ) {
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
                                            _getLeadingString(
                                              index,
                                              type: i.type,
                                            );

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
                                                    backgroundColor:
                                                        AppColors.gray.shade200,
                                                    progressColor:
                                                        o.color ??
                                                        _palette[index],
                                                    animation: true,
                                                    animationDuration: 250,
                                                    curve: Easing
                                                        .standardDecelerate,
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
                                                        style:
                                                            styleLeadingString,
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
                              ], */
                            ],
                          ),
                        ),

                        if (widget.questions.last != i) ...[
                          SizedBox(height: 40.h),
                        ],
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
