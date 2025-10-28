import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/helpers/extentions.dart';
import 'package:spotify/core/helpers/is_dark_mode.dart';
import 'package:spotify/core/helpers/spacing.dart';
import 'package:spotify/core/routing/routes.dart';
import 'package:spotify/core/theme/app_text_styles.dart';
import 'package:spotify/core/widgets/basic_app_bar.dart';
import 'package:spotify/core/widgets/basic_app_button.dart';

class ChooseLoginOrSignupScreen extends StatelessWidget {
  const ChooseLoginOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BasicAppBar(),

          Align(
            alignment: AlignmentGeometry.topRight,
            child: SvgPicture.asset(
              'assets/vectors/top_pattern.svg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomRight,
            child: SvgPicture.asset(
              'assets/vectors/bottom_pattern.svg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomLeft,
            child: Image.asset('assets/images/auth_bg.png', fit: BoxFit.cover),
          ),
          Align(
            alignment: AlignmentGeometry.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/vectors/logo.svg'),
                  verticalSpace(40),
                  Text(
                    'Enjoy Listening To Music',
                    style: AppTextStyles.font26Bold,
                  ),
                  verticalSpace(20),

                  Text(
                    'Spotify is a proprietary Swedish audio\nstreaming and media services provider',
                    style: AppTextStyles.font17GreyMedium,
                  ),
                  verticalSpace(40),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {
                            context.pushNamed(Routes.registerScreen);
                          },
                          title: 'Register',
                        ),
                      ),
                      horizontalSpace(20),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {
                            context.pushNamed(Routes.signinScreen);
                          },
                          child: Text(
                            'Sign In',
                            style: context.isDarkMode
                                ? AppTextStyles.font16WhiteBold
                                : AppTextStyles.font16BlackBold,
                          ),
                        ),
                      ),
                    ],
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
