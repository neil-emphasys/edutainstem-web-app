import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/components/app_table.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:edutainstem/injection.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RoomCodeWidget extends StatefulWidget {
  const RoomCodeWidget({required this.blocInstance, super.key});

  final RoomCreateBloc blocInstance;

  @override
  State<RoomCodeWidget> createState() => _RoomCodeWidgetState();
}

class _RoomCodeWidgetState extends State<RoomCodeWidget> {
  final repo = it<RoomRepository>();
  late final ExpandableController expandableController;

  @override
  void initState() {
    super.initState();

    expandableController = ExpandableController(initialExpanded: false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      // constraints: BoxConstraints(minHeight: 0.6.sh),
      width: 0.5.sw,
      padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 20.r),
      child: BlocBuilder<RoomCreateBloc, RoomCreateState>(
        bloc: widget.blocInstance,
        buildWhen: (previous, current) => current.maybeWhen(
          orElse: () => true,
          loading: (loaderString) => false,
        ),
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            created: (data, refetch) => Column(
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
                    StreamBuilder(
                      stream: repo.watchAssessmentStudents(
                        roomId: data.id ?? '',
                      ),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData)
                          return const CircularProgressIndicator();
                        final either = snapshot.data!;
                        return either.fold(
                          (f) {
                            return Text('Error: $f');
                          },
                          (answers) {
                            final listStudentsAnswers = answers.data;

                            if (listStudentsAnswers.isNotEmpty) {
                              if (!expandableController.expanded) {
                                expandableController.toggle();
                              }
                            }

                            // return PollWidget(questions: answers.data);

                            return Text(
                              listStudentsAnswers.length.toString(),
                              style: AppTextStyles.getStyle(
                                AppTextStyle.bodySmall,
                                modifier: (base) => base.copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.3.sp,
                                  color: AppColors.primary,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),

                    Text(
                      ' Students Joined',
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
                SizedBox(height: 40.h),
                SizedBox(
                  width: 160.w,
                  child: Row(
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
                                data.roomCode,
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
                                data: data.roomCode,
                                version: QrVersions.auto,
                                size: 200.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40.h),
                SizedBox(
                  width: 160.w,
                  child: ExpandablePanel(
                    controller: expandableController,
                    header: Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Text(
                        'See students who joined',
                        style: AppTextStyles.getStyle(
                          AppTextStyle.bodySmall,
                          modifier: (base) => base.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3.sp,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                    collapsed: const SizedBox.shrink(),
                    expanded: StreamBuilder(
                      stream: repo.watchAssessmentStudents(
                        roomId: data.id ?? '',
                      ),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData)
                          return const CircularProgressIndicator();
                        final either = snapshot.data!;
                        return either.fold((f) => Text('Error: $f'), (answers) {
                          final listStudentsAnswers = answers.data;

                          // return PollWidget(questions: answers.data);

                          return AppTable(
                            columns: 2,
                            data: listStudentsAnswers
                                .map((e) => e.name)
                                .toList(),
                          );
                        });
                      },
                    ),
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      iconColor: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(height: 60.h),
                AppButton(
                  title: 'Close Room and Start SEE Assessment',
                  backgroundColor: AppColors.red,
                  onPressed: () =>
                      widget.blocInstance.add(RoomCreateEvent.close(data)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
