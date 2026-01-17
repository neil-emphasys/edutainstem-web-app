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
      width: 0.5.sw,
      padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
