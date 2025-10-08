// * GOOGLE SIGN SCOPES
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static const List<String> googleSignInScopes = [
    'email',
    // 'https://www.googleapis.com/auth/contacts.readonly',
  ];

  static List<BoxShadow> get defaultBoxShadow {
    return [
      BoxShadow(
        color: AppColors.black,
        spreadRadius: 0,
        blurRadius: 0,
        offset: Offset(3.r, 3.r), // changes position of shadow
      ),
    ];
  }

  static BoxBorder get defaultBorder {
    return Border.all(width: 2.sp);
  }
}
