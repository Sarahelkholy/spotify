import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/core/theme/app_colors.dart';
import 'package:spotify/core/theme/font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font20WhiteBold = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font25WhiteBold = TextStyle(
    fontSize: 25.sp,
    color: AppColors.lightBackground,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font17GreyRegular = TextStyle(
    fontSize: 17.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font17GreyMedium = TextStyle(
    fontSize: 17.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font26Bold = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.bold,
  );
}
