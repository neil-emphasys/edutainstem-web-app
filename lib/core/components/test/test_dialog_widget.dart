import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TestDialogWidget extends StatefulWidget {
  const TestDialogWidget({super.key});

  @override
  State<TestDialogWidget> createState() => _TestDialogWidgetState();
}

class _TestDialogWidgetState extends State<TestDialogWidget> {
  final seeSamplePolls = <PollChoiceGroup>[
    // Multiple Choice
    const PollChoiceGroup(
      question:
          'You notice a classmate struggling with a task. What would you most likely do?',
      type: QuestionTypesEnum.multipleChoice,
      choices: [
        PollChoice(label: 'Offer immediate help', count: 25),
        PollChoice(label: 'Wait until they ask for help', count: 18),
        PollChoice(label: 'Inform the teacher', count: 10),
        PollChoice(label: 'Do nothing', count: 5),
      ],
    ),

    // True or False
    const PollChoiceGroup(
      question: 'It is important to listen carefully when others are speaking.',
      type: QuestionTypesEnum.trueOrFalse,
      choices: [
        PollChoice(label: 'True', count: 45),
        PollChoice(label: 'False', count: 8),
      ],
    ),

    // Likert Scale (5-point)
    const PollChoiceGroup(
      question: 'I feel confident expressing my ideas in a group discussion.',
      type: QuestionTypesEnum.likertScale,
      choices: [
        PollChoice(label: 'Strongly Disagree', count: 6),
        PollChoice(label: 'Disagree', count: 12),
        PollChoice(label: 'Neutral', count: 18),
        PollChoice(label: 'Agree', count: 24),
        PollChoice(label: 'Strongly Agree', count: 20),
      ],
    ),

    // Multiple Choice
    const PollChoiceGroup(
      question:
          'If a conflict happens between two classmates, what is the best first step?',
      type: QuestionTypesEnum.multipleChoice,
      choices: [
        PollChoice(label: 'Ignore it', count: 7),
        PollChoice(label: 'Talk calmly to both sides', count: 32),
        PollChoice(label: 'Report to the teacher immediately', count: 22),
        PollChoice(label: 'Take sides with your friend', count: 9),
      ],
    ),

    // Likert Scale
    const PollChoiceGroup(
      question: 'I try to understand how others feel before reacting.',
      type: QuestionTypesEnum.likertScale,
      choices: [
        PollChoice(label: 'Strongly Disagree', count: 5),
        PollChoice(label: 'Disagree', count: 9),
        PollChoice(label: 'Neutral', count: 15),
        PollChoice(label: 'Agree', count: 27),
        PollChoice(label: 'Strongly Agree', count: 30),
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final blocInstance = RoomCreateBloc(it());

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
                                'SEE Assessment Statistics',
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
                      // PollWidget(questions: seeSamplePolls),
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
