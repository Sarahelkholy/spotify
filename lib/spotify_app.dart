import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/core/routing/app_router.dart';
import 'package:spotify/core/routing/routes.dart';
import 'package:spotify/core/theme/app_theme.dart';

class SpotifyApp extends StatelessWidget {
  final AppRouter appRouter;
  const SpotifyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'spotify app',
          theme: AppTheme.lightTheme,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.getStartedScreen,
        );
      },
    );
  }
}
