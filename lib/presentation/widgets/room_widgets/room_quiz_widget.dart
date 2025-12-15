import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/domain/models/assessments/assessments_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_quiz_poll_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RoomQuizWidget extends StatelessWidget {
  const RoomQuizWidget({
    required this.blocInstance,
    required this.room,
    super.key,
  });

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    final repo = it<RoomRepository>();

    final Map<DifficultyEnum, List<PollChoiceGroup>> loadingPollChoiceGroup = {
      DifficultyEnum.basic: [
        const PollChoiceGroup(
          question: 'Sample Question Number One',
          type: QuestionTypesEnum.multipleChoice,
          choices: [
            PollChoice(label: 'Choice A', count: 0),
            PollChoice(label: 'Choice B', count: 0),
            PollChoice(label: 'Choice C', count: 0),
            PollChoice(label: 'Choice D', count: 0),
          ],
        ),
        const PollChoiceGroup(
          question: 'Sample Question Number Two',
          type: QuestionTypesEnum.trueOrFalse,
          choices: [
            PollChoice(label: 'Choice A', count: 0),
            PollChoice(label: 'Choice B', count: 0),
            PollChoice(label: 'Choice C', count: 0),
            PollChoice(label: 'Choice D', count: 0),
          ],
        ),
        const PollChoiceGroup(
          question: 'Sample Question Number Three',
          type: QuestionTypesEnum.likertScale,
          choices: [
            PollChoice(label: 'Strongly Disagree', count: 0),
            PollChoice(label: 'Disagree', count: 0),
            PollChoice(label: 'Neutral', count: 0),
            PollChoice(label: 'Agree', count: 0),
            PollChoice(label: 'Strongly Agree', count: 0),
          ],
        ),
      ],
      DifficultyEnum.intermediate: [
        const PollChoiceGroup(
          question: 'Sample Question Number One',
          type: QuestionTypesEnum.multipleChoice,
          choices: [
            PollChoice(label: 'Choice A', count: 0),
            PollChoice(label: 'Choice B', count: 0),
            PollChoice(label: 'Choice C', count: 0),
            PollChoice(label: 'Choice D', count: 0),
          ],
        ),
        const PollChoiceGroup(
          question: 'Sample Question Number Two',
          type: QuestionTypesEnum.trueOrFalse,
          choices: [
            PollChoice(label: 'Choice A', count: 0),
            PollChoice(label: 'Choice B', count: 0),
            PollChoice(label: 'Choice C', count: 0),
            PollChoice(label: 'Choice D', count: 0),
          ],
        ),
      ],
      DifficultyEnum.advance: [
        const PollChoiceGroup(
          question: 'Sample Question Number One',
          type: QuestionTypesEnum.multipleChoice,
          choices: [
            PollChoice(label: 'Choice A', count: 0),
            PollChoice(label: 'Choice B', count: 0),
            PollChoice(label: 'Choice C', count: 0),
            PollChoice(label: 'Choice D', count: 0),
          ],
        ),
      ],
    };

    return Container(
      // color: Colors.red,
      // constraints: BoxConstraints(minHeight: 0.6.sh),
      width: 0.5.sw,
      padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
      child: Column(
        // shrinkWrap: true,

        // mainAxisSize: MainAxisSize.min,
        children: [
          /* Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => context.pop(),
                    icon: Image.asset(Assets.icons.png.goBack.path, width: 4.w),
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
              AppButton(
                width: 40.w,
                title: 'ReOpen',
                onPressed: () =>
                    blocInstance.add(const RoomCreateEvent.reOpen()),
              ),
              SizedBox(width: 4.w),
              AppButton(
                width: 48.w,
                title: 'Switch View',
                backgroundColor: AppColors.tigerEyeOrange,
                onPressed: () =>
                    blocInstance.add(const RoomCreateEvent.switchCloseView()),
              ),
            ],
          ),
          SizedBox(height: 40.h), */
          StreamBuilder(
            stream: repo.watchQuizStatistics(room: room),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Skeletonizer(
                  enabled: true,
                  child: RoomQuizPollWidget(
                    exams: loadingPollChoiceGroup,
                    room: room,
                  ),
                );
              }

              final either = snapshot.data!;
              return either.fold((f) => Text('Error: $f'), (answers) {
                return RoomQuizPollWidget(exams: answers.data, room: room);
              });
            },
          ),
          // PollWidget(questions: seeSamplePolls),
        ],
      ),
    );
  }
}
