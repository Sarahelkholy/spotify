// ignore_for_file: deprecated_member_use

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/helpers/extentions.dart';
import 'package:spotify/core/helpers/spacing.dart';
import 'package:spotify/core/routing/routes.dart';
import 'package:spotify/core/theme/app_text_styles.dart';
import 'package:spotify/core/widgets/basic_app_button.dart';
import 'package:spotify/features/intro/logic/cubit/theme_cubit.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/choose-moode.png'),
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.15)),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40.w,
              ).copyWith(bottom: 30.h),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentGeometry.topCenter,
                    child: SvgPicture.asset('assets/vectors/logo.svg'),
                  ),
                  Spacer(),
                  Text('Choose Mode', style: AppTextStyles.font25WhiteBold),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<ThemeCubit>().updateTheme(
                                ThemeMode.dark,
                              );
                            },
                            child: ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 10,
                                  sigmaY: 10,
                                ),
                                child: Container(
                                  height: 70.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xff30393C).withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/vectors/Moon.svg',
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          verticalSpace(10),
                          Text(
                            'Dark Mood',
                            style: AppTextStyles.font17GreyMedium,
                          ),
                        ],
                      ),
                      horizontalSpace(40),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.read<ThemeCubit>().updateTheme(
                                ThemeMode.light,
                              );
                            },
                            child: ClipOval(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 10,
                                  sigmaY: 10,
                                ),
                                child: Container(
                                  height: 70.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xff30393C).withOpacity(0.5),
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/vectors/Sun.svg',
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          verticalSpace(10),
                          Text(
                            'Light Mood',
                            style: AppTextStyles.font17GreyMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  verticalSpace(40),
                  BasicAppButton(
                    onPressed: () {
                      context.pushNamed(Routes.chooseLoginOrSignupScreen);
                    },
                    title: 'Continue',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
