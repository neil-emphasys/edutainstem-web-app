import 'package:edutainstem/core/components/components.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/main-dashboard/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    //! TEMP: FOR DEV ONLY
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   DevFirebaseFunctions().addSampleLessonToEle();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 16.w),
      children: [
        SizedBox(
          height: 150.w,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AppGlassContainer(
                            width: double.infinity,
                            height: 40.w,
                            child: Center(
                              child: Text(
                                'Total Rooms Created',
                                style: AppTextStyles.getStyle(
                                  AppTextStyle.bodySmall,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.w),
                        Expanded(
                          child: AppGlassContainer(
                            width: double.infinity,
                            height: 40.w,
                            child: Center(
                              child: Text(
                                'Total Students',
                                style: AppTextStyles.getStyle(
                                  AppTextStyle.bodySmall,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: AppGlassContainer(
                            width: double.infinity,
                            height: 40.w,
                            child: Center(
                              child: Text(
                                'Total Lessons Created',
                                style: AppTextStyles.getStyle(
                                  AppTextStyle.bodySmall,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.w),
                    AppGlassContainer(
                      width: double.infinity,
                      height: 40.w,
                      child: Center(
                        child: Text(
                          'Total Rooms Created',
                          style: AppTextStyles.getStyle(AppTextStyle.bodySmall),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.w),
                    AppGlassContainer(
                      width: double.infinity,
                      height: 40.w,
                      child: Center(
                        child: Text(
                          'Total Rooms Created',
                          style: AppTextStyles.getStyle(AppTextStyle.bodySmall),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    AppGlassContainer(
                      shape: BoxShape.circle,
                      width: double.infinity,
                      height: 40.w,
                      child: Center(
                        child: Text(
                          'Total Rooms Created',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.getStyle(AppTextStyle.bodySmall),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.w),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: AppGlassContainer(
                          margin: EdgeInsets.symmetric(horizontal: 8.w),
                          width: double.infinity,
                          height: 80.w,
                          child: Center(
                            child: Text(
                              'Total Lessons Created',
                              style: AppTextStyles.getStyle(
                                AppTextStyle.bodySmall,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
