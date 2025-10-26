import 'package:flutter/material.dart';
import 'package:spotify/core/theme/app_colors.dart';
import 'package:spotify/core/theme/font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font20WhiteBold = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font25WhiteBold = TextStyle(
    fontSize: 25,
    color: AppColors.lightBackground,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font17GreyRegular = TextStyle(
    fontSize: 17,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font17GreyMedium = TextStyle(
    fontSize: 17,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.medium,
  );
}
