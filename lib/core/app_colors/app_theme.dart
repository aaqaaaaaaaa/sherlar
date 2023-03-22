import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sherlar/core/app_colors/colors.dart';

class AppTextStyle {
  static const String fontFamily = "Montserrat";

  static TextStyle body26w6 = TextStyle(
      fontSize: 26.sp,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
      color: AppColors.primaryColor);
  static TextStyle body20w6 = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
      color: AppColors.textColor);
}

class AppDecoration {
  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
          side: BorderSide(color: AppColors.primaryColor)),
      side: BorderSide(width: 2.h, color: AppColors.primaryColor));

// static BoxDecoration decoration = BoxDecoration(
//   color: AppTheme.fillColor,
//   borderRadius: BorderRadius.circular(18.r),
//   border: Border.all(color: AppTheme.keyboardBorderColor, width: 4.w),
// );
//
}

class AppImages {
  // static String playIcon = "assets/icons/play_icon.svg";
  static String shoir = "assets/images/shoir.png";
  static String bg = "assets/images/bg.jpg";
}
