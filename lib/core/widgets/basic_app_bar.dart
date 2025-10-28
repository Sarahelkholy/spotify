import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/core/helpers/extentions.dart';
import 'package:spotify/core/helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  const BasicAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: title ?? const Text(''),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: context.isDarkMode
                ? Colors.white.withOpacity(0.03)
                : Colors.black.withOpacity(0.03),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
