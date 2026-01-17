import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/core/helpers/string_helpers.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_student_pre_assessment_details_dialog_widget.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PollWidget extends StatefulWidget {
  final List<PollChoiceGroup> questions;
  final RoomModel room;

  const PollWidget({super.key, required this.questions, required this.room});

  @override
  State<PollWidget> createState() => _PollWidgetState();
}

class _PollWidgetState extends State<PollWidget> {
  bool isStudentView = false;

  int totalStudents = 0;
  int totalStudentsFinishedAssessment = 0;

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

  void _toggleSwitchView() {
    setState(() {
      isStudentView = !isStudentView;
    });
  }

  void _showStudentPreAssessmentDetailsDialog(
    BuildContext context, {
    required StudentEnrollmentModel student,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false, // dialog can't be dismissed by tapping outside
      builder: (BuildContext context) {
        return RoomStudentPreAssessmentDetailsDialogWidget(
          questions: widget.questions,
          student: student,
        );
        // return const TestDialogWidget();
      },
    );
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        totalStudents = widget.room.studentsEnrolled.entries.length;
        totalStudentsFinishedAssessment = widget.room.studentsEnrolled.entries
            .map((e) => e.value.assessment.isNotEmpty)
            .length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),
      decoration: BoxDecoration(
        color: AppColors.primary.shade50.withAlpha(100),
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppButton(
                width: 56.w,
                wrapButtonContent: true,
                title: (isStudentView)
                    ? 'Switch to General Poll'
                    : 'Switch to Student View',
                icon: Image.asset(
                  Assets.icons.png.swap.path,
                  width: 5.w,
                  color: AppColors.white,
                ),
                hasIcon: true,
                buttonIconSpacing: 2.w,
                onPressed: () => _toggleSwitchView(),
              ),
              const Spacer(),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '$totalStudentsFinishedAssessment / $totalStudents student(s) have completed the assessment',
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
              ),
            ],
          ),
          SizedBox(height: 16.h),
          if (isStudentView) ...[
            FadeIn(
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  Text(
                    '(Click any student to view assessment answers)',
                    overflow: TextOverflow.clip,
                    // softWrap: false,
                    style: AppTextStyles.getStyle(
                      AppTextStyle.overline,
                      modifier: (base) => base.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.3.sp,
                        color: AppColors.gray,
                      ),
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 40),
                  for (final i in widget.room.studentsEnrolled.entries) ...[
                    Builder(
                      builder: (context) {
                        final StudentEnrollmentModel value = i.value;
                        final isAssessmentDone = value.assessment.isNotEmpty;

                        return Column(
                          children: [
                            InkWell(
                              onTap: isAssessmentDone
                                  ? () =>
                                        _showStudentPreAssessmentDetailsDialog(
                                          context,
                                          student: value,
                                        )
                                  : null,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.w,
                                  vertical: 6.w,
                                ),
                                decoration: BoxDecoration(
                                  color: isAssessmentDone
                                      ? AppColors.primary
                                      : AppColors.diamondBlue.shade50,
                                  border: Border.all(color: AppColors.primary),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              value.name.capitalizeWords(),
                                              overflow: TextOverflow.clip,
                                              // softWrap: false,
                                              style: AppTextStyles.getStyle(
                                                AppTextStyle.bodySmall,
                                                modifier: (base) =>
                                                    base.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 0.3.sp,
                                                      color: isAssessmentDone
                                                          ? AppColors.white
                                                          : AppColors.primary,
                                                    ),
                                              ),
                                              maxLines: 2,
                                            ),
                                            SizedBox(height: 8.h),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 2.w,
                                                vertical: 2.w,
                                              ),
                                              decoration: BoxDecoration(
                                                color: value.difficulty.toColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(40.r),
                                                ),
                                              ),
                                              child: Text(
                                                value.difficulty.name
                                                    .capitalize(),
                                                overflow: TextOverflow.clip,
                                                // softWrap: false,
                                                style: AppTextStyles.getStyle(
                                                  AppTextStyle.overline,
                                                  modifier: (base) =>
                                                      base.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        letterSpacing: 0.3.sp,
                                                        color: AppColors.black,
                                                      ),
                                                ),
                                                maxLines: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        FluentIcons.eye_lines_48_regular,
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            if (widget.room.studentsEnrolled.entries.last !=
                                i) ...[
                              SizedBox(height: 16.h),
                            ],
                          ],
                        );
                      },
                    ),
                  ],
                ],
              ),
            ),
          ] else ...[
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
                        borderRadius: BorderRadius.all(Radius.circular(8.r)),
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

                    if (widget.questions.last != i) ...[SizedBox(height: 40.h)],
                  ],
                ],
              ),
            ),
          ],
        ],
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
