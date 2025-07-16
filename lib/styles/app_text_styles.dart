import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTextStyle {
  bodySmall,
  bodyNormal,
  buttonText,
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  subtitle1,
  subtitle2,
  caption,
  overline,
}

class AppTextStyles {
  AppTextStyles._();

  static final TextStyle _bodySmall = GoogleFonts.comfortaa(
    fontSize: 3.sp,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static final TextStyle _bodyNormal = GoogleFonts.comfortaa(
    fontSize: 4.sp,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static final TextStyle _buttonText = GoogleFonts.poppins(
    fontSize: 5.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    letterSpacing: 1.5.sp,
  );

  static final TextStyle _headline1 = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5.sp,
    color: Colors.black,
  );

  static final TextStyle _headline2 = GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5.sp,
    color: Colors.black,
  );

  static final TextStyle _headline3 = GoogleFonts.poppins(
    fontSize: 9.sp,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static final TextStyle _headline4 = GoogleFonts.poppins(
    fontSize: 8.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25.sp,
    color: Colors.black,
  );

  static final TextStyle _headline5 = GoogleFonts.poppins(
    fontSize: 7.sp,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static final TextStyle _headline6 = GoogleFonts.poppins(
    fontSize: 6.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15.sp,
    color: Colors.black,
  );

  static final TextStyle _subtitle1 = GoogleFonts.poppins(
    fontSize: 5.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15.sp,
    color: Colors.black,
  );

  static final TextStyle _subtitle2 = GoogleFonts.poppins(
    fontSize: 4.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1.sp,
    color: Colors.black,
  );

  static final TextStyle _caption = GoogleFonts.comfortaa(
    fontSize: 3.5.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.4.sp,
    color: Colors.grey[700],
  );

  static final TextStyle _overline = GoogleFonts.comfortaa(
    fontSize: 2.5.sp,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.5.sp,
    color: Colors.grey[600],
  );

  static TextStyle getStyle(
    AppTextStyle style, {
    TextStyle Function(TextStyle base)? modifier,
  }) {
    TextStyle styleToReturn = _bodyNormal;

    switch (style) {
      case AppTextStyle.bodySmall:
        styleToReturn = _bodySmall;
        break;
      case AppTextStyle.bodyNormal:
        styleToReturn = _bodyNormal;
        break;
      case AppTextStyle.buttonText:
        styleToReturn = _buttonText;
        break;
      case AppTextStyle.headline1:
        styleToReturn = _headline1;
        break;
      case AppTextStyle.headline2:
        styleToReturn = _headline2;
        break;
      case AppTextStyle.headline3:
        styleToReturn = _headline3;
        break;
      case AppTextStyle.headline4:
        styleToReturn = _headline4;
        break;
      case AppTextStyle.headline5:
        styleToReturn = _headline5;
        break;
      case AppTextStyle.headline6:
        styleToReturn = _headline6;
        break;
      case AppTextStyle.subtitle1:
        styleToReturn = _subtitle1;
        break;
      case AppTextStyle.subtitle2:
        styleToReturn = _subtitle2;
        break;
      case AppTextStyle.caption:
        styleToReturn = _caption;
        break;
      case AppTextStyle.overline:
        styleToReturn = _overline;
        break;
    }

    return modifier != null ? modifier(styleToReturn) : styleToReturn;
  }
}
