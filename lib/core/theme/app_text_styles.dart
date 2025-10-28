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

  static TextStyle font16DarkGreyMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.darkGrey,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font16GreyMedium = TextStyle(
    fontSize: 16.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font26Bold = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font30Bold = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13DarkGreyRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.darkGrey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14PrimaryRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.primary,
    fontWeight: FontWeightHelper.regular,
  );
}
