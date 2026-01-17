import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:edutainstem/application/rooms/room_create_bloc/room_create_bloc.dart';
import 'package:edutainstem/core/components/app_button.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_difficulty_chart_widget.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_journal_feedback_widget.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_quiz_widget.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_statistics_widget.dart';
import 'package:edutainstem/presentation/widgets/room_widgets/room_support_requests_widget.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RoomMainStatWrapperWidget extends StatefulWidget {
  const RoomMainStatWrapperWidget({
    required this.blocInstance,
    required this.room,
    super.key,
  });

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  State<RoomMainStatWrapperWidget> createState() =>
      _RoomMainStatWrapperWidgetState();
}

class _RoomMainStatWrapperWidgetState extends State<RoomMainStatWrapperWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
    _tabController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    icon: Image.asset(Assets.icons.png.goBack.path, width: 4.w),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    'Statistics',
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
                backgroundColor: AppColors.orange,
                onPressed: () =>
                    widget.blocInstance.add(const RoomCreateEvent.reOpen()),
              ),
            ],
          ),
          SizedBox(height: 32.h),

          // Use your ButtonsTabBar or a regular TabBar bound to _tabController
          SizedBox(
            width: double.infinity,
            child: ButtonsTabBar(
              controller: _tabController,
              physics: const ClampingScrollPhysics(),
              backgroundColor: AppColors.primary,
              // borderWidth: 2,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.r,
                vertical: 4.r,
              ),
              borderColor: Colors.transparent,
              labelStyle: AppTextStyles.getStyle(AppTextStyle.buttonText)
                  .copyWith(
                    fontSize: 2.5.sp,
                    color: AppColors.white,
                    letterSpacing: 0.8.sp,
                    // fontWeight: FontWeight.bold,
                  ),
              unselectedLabelStyle:
                  AppTextStyles.getStyle(AppTextStyle.buttonText).copyWith(
                    fontSize: 2.5.sp,
                    color: AppColors.black.withAlpha(100),
                    letterSpacing: 0.8.sp,
                    // fontWeight: FontWeight.bold,
                  ),
              radius: 40.r,
              unselectedBorderColor: Colors.transparent,
              buttonMargin: EdgeInsets.only(right: 4.w),
              // center: true,
              // unselectedBackgroundColor: AppColors.gray,
              contentCenter: true,
              tabs: [
                Tab(
                  // icon: const Icon(Icons.directions_car),
                  text: 'Pre-Assessment'.toUpperCase(),
                ),
                Tab(
                  // icon: const Icon(Icons.directions_transit),
                  text: 'Difficulty Modifiers'.toUpperCase(),
                ),
                Tab(
                  // icon: Icon(Icons.directions_bike),
                  text: 'Quiz'.toUpperCase(),
                ),
                Tab(
                  // icon: const Icon(Icons.directions_transit),
                  text: 'Support Requests'.toUpperCase(),
                ),
                Tab(
                  // icon: const Icon(Icons.directions_transit),
                  text: 'Feedbacks'.toUpperCase(),
                ),
              ],
            ),
          ),

          // 💡 Content that sizes to its child's intrinsic height
          // (no viewport here, so no "unbounded height" errors)
          /* AnimatedSize(
            duration: const Duration(milliseconds: 200),
            alignment: Alignment.topCenter,
            child: _TabBody(
              index: _tabController.index,
              blocInstance: widget.blocInstance,
              room: widget.room,
            ),
          ), */
          AnimatedSize(
            duration: const Duration(milliseconds: 250),
            alignment: Alignment.topCenter,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              switchInCurve: Curves.easeOut,
              switchOutCurve: Curves.easeIn,
              transitionBuilder: (child, anim) =>
                  FadeTransition(opacity: anim, child: child),
              child: _buildActiveTabChild(_tabController.index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActiveTabChild(int index) {
    switch (index) {
      case 0:
        return KeyedSubtree(
          key: const ValueKey('pre'),
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _PreAssessmentContent(
              blocInstance: widget.blocInstance,
              room: widget.room,
            ),
          ),
        );
      case 1:
        return KeyedSubtree(
          key: const ValueKey('diff'),
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _DifficultyChartContent(
              blocInstance: widget.blocInstance,
              room: widget.room,
            ),
          ),
        );
      case 2:
        return KeyedSubtree(
          key: const ValueKey('quiz'),
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _QuizContent(
              blocInstance: widget.blocInstance,
              room: widget.room,
            ),
          ),
        );
      case 3:
        return KeyedSubtree(
          key: const ValueKey('support'),
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _SupportRequestsContent(
              blocInstance: widget.blocInstance,
              room: widget.room,
            ),
          ),
        );
      case 4:
        return KeyedSubtree(
          key: const ValueKey('feedback'),
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _JournalFeedbackContent(
              blocInstance: widget.blocInstance,
              room: widget.room,
            ),
          ),
        );
      default:
        return KeyedSubtree(
          key: const ValueKey('quiz'),
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _QuizContent(
              blocInstance: widget.blocInstance,
              room: widget.room,
            ),
          ),
        );
    }
  }
}

class _TabBody extends StatelessWidget {
  const _TabBody({
    required this.index,
    required this.blocInstance,
    required this.room,
  });

  final int index;
  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    // Build all children so state is preserved; show only the active one.
    final children = <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: _PreAssessmentContent(blocInstance: blocInstance, room: room),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: _DifficultyChartContent(blocInstance: blocInstance, room: room),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: _QuizContent(blocInstance: blocInstance, room: room),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: _SupportRequestsContent(blocInstance: blocInstance, room: room),
      ),
    ];

    return IndexedStack(
      index: index,
      alignment: Alignment.topCenter,
      children: children,
    );
  }
}

// Example content widgets – these determine the height naturally.
class _PreAssessmentContent extends StatelessWidget {
  const _PreAssessmentContent({required this.blocInstance, required this.room});

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    return RoomStatisticsWidget(blocInstance: blocInstance, room: room);
  }
}

class _DifficultyChartContent extends StatelessWidget {
  const _DifficultyChartContent({
    required this.blocInstance,
    required this.room,
  });

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    // Taller content just for demo
    return RoomDifficultyChartWidget(blocInstance: blocInstance, room: room);
  }
}

class _QuizContent extends StatelessWidget {
  const _QuizContent({required this.blocInstance, required this.room});

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    return RoomQuizWidget(blocInstance: blocInstance, room: room);
  }
}

class _SupportRequestsContent extends StatelessWidget {
  const _SupportRequestsContent({
    required this.blocInstance,
    required this.room,
  });

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    return RoomSupportRequestsWidget(blocInstance: blocInstance, room: room);
  }
}

class _JournalFeedbackContent extends StatelessWidget {
  const _JournalFeedbackContent({
    required this.blocInstance,
    required this.room,
  });

  final RoomCreateBloc blocInstance;
  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    return RoomJournalFeedbackWidget(blocInstance: blocInstance, room: room);
  }
}
