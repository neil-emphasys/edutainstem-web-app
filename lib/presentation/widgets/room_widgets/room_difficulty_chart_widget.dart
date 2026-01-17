import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_dropdown_field.dart';
import 'package:edutainstem/core/components/app_text_form_field.dart';
import 'package:edutainstem/core/enums/difficulty_enum.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/core/helpers/string_helpers.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoomDifficultyChartWidget extends StatefulWidget {
  const RoomDifficultyChartWidget({
    required this.blocInstance,
    required this.room,
    super.key,
  });

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  State<RoomDifficultyChartWidget> createState() =>
      _DifficultyChartWidgetState();
}

class _DifficultyChartWidgetState extends State<RoomDifficultyChartWidget> {
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
        children: [
          StreamBuilder(
            stream: repo.watchAssessmentStudents(roomId: widget.room.id ?? ''),
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
                  final totalStudentsFinishedAssessment = listStudentsAnswers
                      .where((element) {
                        final difficulty = element.difficulty;

                        return difficulty != null && difficulty.isNotEmpty;
                      })
                      .toList()
                      .length;

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
                            'Name',
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
                            'Current Assigned Difficulty',
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
                            'Change Difficulty to',
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
                    final studentInstance = listStudentsAnswers[i];
                    final difficulty = listStudentsAnswers[i].difficulty ?? '';

                    if (difficulty.isEmpty) continue;

                    final preferredLanguageController =
                        TextEditingController.fromValue(
                          TextEditingValue(
                            text: listStudentsAnswers[i].difficulty ?? '',
                          ),
                        );

                    preferredLanguageController.text =
                        listStudentsAnswers[i].difficulty ?? '';

                    final rowCells = <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            listStudentsAnswers[i].name,
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
                            listStudentsAnswers[i].difficulty?.capitalize() ??
                                '',
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
                          child: AppDropdownField(
                            fieldTitle: '',
                            initialValue: preferredLanguageController.text
                                .capitalize(),
                            controller: preferredLanguageController,
                            fieldType: AppTextFormFieldType.filled,
                            isFieldTitleSeparated: false,
                            dropdownItems: DifficultyEnum.values
                                .map((e) => e.name.toString().capitalize())
                                .toList(),
                            onChanged: (p0) => changed(
                              studentInstance.copyWith(
                                changedDifficulty: p0.toLowerCase(),
                              ),
                            ),
                            style: AppTextStyles.getStyle(
                              AppTextStyle.bodySmall,
                              modifier: (base) => base.copyWith(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.3.sp,
                              ),
                            ),
                            // validator: validator.compose([
                            //   validator.required(fieldName: 'Preferred Language'),
                            // ]),
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

                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                      vertical: 6.w,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary.shade50.withAlpha(100),
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '$totalStudentsFinishedAssessment / $totalStudents student(s) have completed the assessment',
                            style: columnTitleTextStyle.copyWith(
                              color: AppColors.primary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 16.h),
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
                    ),
                  );
                },
              );
            },
          ),
          SizedBox(height: 24.h),
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
          ),
        ],
      ),
    );
  }
}
