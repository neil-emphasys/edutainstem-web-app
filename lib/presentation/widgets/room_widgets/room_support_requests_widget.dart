import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/domain/models/help_requests/help_request_model.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomSupportRequestsWidget extends StatefulWidget {
  const RoomSupportRequestsWidget({
    required this.blocInstance,
    required this.room,
    super.key,
  });

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  State<RoomSupportRequestsWidget> createState() =>
      _DifficultyChartWidgetState();
}

class _DifficultyChartWidgetState extends State<RoomSupportRequestsWidget> {
  final List<StudentEnrollment> changedDifficulty = [];

  void changed(StudentEnrollment student) {
    if (changedDifficulty.any((element) => element.uid == student.uid)) {
      final existingInstance = changedDifficulty.firstWhere(
        (element) => element.uid == student.uid,
      );

      final index = changedDifficulty.indexOf(existingInstance);

      // if the changed difficulty is the same with the current one then remove if existing
      if (student.difficulty == student.changedDifficulty) {
        changedDifficulty.removeAt(index);
        setState(() {});
      } else {
        if (existingInstance.difficulty == student.changedDifficulty) return;

        changedDifficulty[index] = changedDifficulty[index].copyWith();
        setState(() {});
      }
    } else {
      if (student.difficulty == student.changedDifficulty) return;

      changedDifficulty.add(student);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final repo = it<RoomRepository>();

    return Container(
      // color: Colors.red,
      // constraints: BoxConstraints(minHeight: 0.6.sh),
      width: 0.5.sw,
      padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
      child: Column(
        // shrinkWrap: true,

        // mainAxisSize: MainAxisSize.min,
        children: [
          /*  Row(
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
                    'Assigned Difficulty Modifiers',
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
                width: 48.w,
                title: 'Switch View',
                backgroundColor: AppColors.tigerEyeOrange,
                onPressed: () => widget.blocInstance.add(
                  const RoomCreateEvent.switchCloseView(),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h), */
          StreamBuilder(
            stream: repo.streamPendingRequests(widget.room.id ?? ''),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const CircularProgressIndicator();
              final either = snapshot.data!;
              return either.fold(
                (f) {
                  return Text('Error: $f');
                },
                (answers) {
                  final listStudentsAnswers = answers.data;
                  final totalStudents = listStudentsAnswers
                      .length; // this is the total of students that should have done the assessment before closing the assessment
                  final totalStudentsFinishedAssessment =
                      listStudentsAnswers.length;

                  final columnTitleTextStyle = AppTextStyles.getStyle(
                    AppTextStyle.bodySmall,
                    modifier: (base) => base.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3.sp,
                      color: AppColors.white,
                    ),
                  );

                  final rowCellsColumnTitle = TableRow(
                    decoration: const BoxDecoration(color: AppColors.primary),
                    children: <Widget>[
                      Container(
                        color: AppColors.primary,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Student Name',
                            style: columnTitleTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        color: AppColors.primary,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Requester\'s Note',
                            style: columnTitleTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        color: AppColors.primary,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Is Done?',
                            style: columnTitleTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  );

                  final List<TableRow> rows = [];

                  rows.add(rowCellsColumnTitle);

                  for (int i = 0; i < listStudentsAnswers.length; i++) {
                    final rowCells = <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            listStudentsAnswers[i].requesterName,
                            style: AppTextStyles.getStyle(
                              AppTextStyle.bodySmall,
                              modifier: (base) => base.copyWith(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.3.sp,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            listStudentsAnswers[i].note.isNotEmpty
                                ? listStudentsAnswers[i].note
                                : 'N/A',
                            style: AppTextStyles.getStyle(
                              AppTextStyle.bodySmall,
                              modifier: (base) => base.copyWith(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.3.sp,
                              ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Center(
                          child: AppButton(
                            title: 'Done',
                            onPressed: () {
                              repo.updateRequestStatus(
                                roomId: widget.room.id ?? '',
                                requestId: listStudentsAnswers[i].id,
                                status: HelpQueueStatus.done,
                              );
                            },
                          ),
                        ),
                      ),
                      /* Padding(
                        padding: const EdgeInsets.all(24),
                        child: AppButton(
                          width: 8,
                          title: 'Update',
                          onPressed: () {},
                        ),
                      ), */
                    ];

                    rows.add(TableRow(children: rowCells));
                  }

                  return listStudentsAnswers.isEmpty
                      ? Text(
                          'No support request/s needed so far',
                          style: columnTitleTextStyle.copyWith(
                            color: AppColors.black,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : Column(
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '$totalStudents Student/s needs help',
                                style: columnTitleTextStyle.copyWith(
                                  color: AppColors.primary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Table(
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  border: const TableBorder.symmetric(
                                    inside: BorderSide(
                                      color: Colors.black,
                                      width: 1.2,
                                    ), // inner borders
                                  ),
                                  children: rows,
                                ),
                              ),
                            ),
                          ],
                        );
                },
              );
            },
          ),
          /* SizedBox(height: 24.h),
          Align(
            alignment: Alignment.centerRight,
            child: AppButton(
              title: 'Update',
              backgroundColor: AppColors.tigerEyeOrange,
              onPressed: changedDifficulty.isNotEmpty
                  ? () => widget.blocInstance.add(
                      RoomCreateEvent.updateEnrollmentsDifficulty(
                        room: widget.room,
                        enrollments: changedDifficulty,
                      ),
                    )
                  : null,
            ),
          ),
          SizedBox(height: 16.h),

          StreamBuilder(
            stream: repo.watchAssessmentStudents(roomId: widget.room.id ?? ''),
            builder: (context, snapshot) {
              bool complete = false;

              if (!snapshot.hasData) {
                complete = false;
              } else {
                final either = snapshot.data!;
                either.fold(
                  (f) {
                    complete = false;
                  },
                  (answers) {
                    final data = answers.data;
                    final totalStudents = data
                        .length; // this is the total of students that should have done the assessment before closing the assessment
                    final totalStudentsFinishedAssessment = data
                        .where((element) {
                          final difficulty = element.difficulty;

                          return difficulty != null && difficulty.isNotEmpty;
                        })
                        .toList()
                        .length;

                    if (totalStudents == totalStudentsFinishedAssessment) {
                      complete = true;
                    }
                  },
                );
              }

              return Align(
                alignment: Alignment.centerRight,
                child: AppButton(
                  title: 'Finalize Difficulty and Start Lesson',
                  onPressed: complete
                      ? () => widget.blocInstance.add(
                          const RoomCreateEvent.startLesson(),
                        )
                      : null,
                ),
              );
            },
          ), */
        ],
      ),
    );
  }
}
