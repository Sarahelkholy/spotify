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

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset('assets/vectors/logo.svg', height: 30.h),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Sign In', style: AppTextStyles.font30Bold),
              verticalSpace(15),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'If you need any support',
                      style: context.isDarkMode
                          ? AppTextStyles.font13GreyRegular
                          : AppTextStyles.font13DarkGreyRegular,
                    ),
                    TextSpan(
                      text: ' Click Here',
                      style: AppTextStyles.font14PrimaryRegular,
                    ),
                  ],
                ),
              ),
              verticalSpace(30),
              _emailField(context),
              verticalSpace(20),
              _passwordField(context),
              verticalSpace(30),

              BasicAppButton(onPressed: () {}, title: 'Sign In'),
              verticalSpace(20),

              GestureDetector(
                onTap: () {
                  context.pushReplacementNamed(Routes.registerScreen);
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Not A Member ?',
                        style: context.isDarkMode
                            ? AppTextStyles.font13GreyRegular
                            : AppTextStyles.font13DarkGreyRegular,
                      ),
                      TextSpan(
                        text: '  Register now',
                        style: AppTextStyles.font14PrimaryRegular,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
}
