// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/helpers/extentions.dart';
import 'package:spotify/core/helpers/spacing.dart';
import 'package:spotify/core/routing/routes.dart';
import 'package:spotify/core/theme/app_text_styles.dart';
import 'package:spotify/core/widgets/basic_app_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/get-started.png'),
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
                  Text(
                    'Enjoy Listening To Music',
                    style: AppTextStyles.font25WhiteBold,
                  ),
                  verticalSpace(20),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                    style: AppTextStyles.font17GreyRegular,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(30),
                  BasicAppButton(
                    onPressed: () {
                      context.pushReplacementNamed(Routes.chooseModeScreen);
                    },
                    title: 'Get Started',
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
