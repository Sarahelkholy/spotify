import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify/core/routing/app_router.dart';
import 'package:spotify/core/routing/routes.dart';
import 'package:spotify/core/theme/app_theme.dart';
import 'package:spotify/features/intro/logic/cubit/theme_cubit.dart';

class SpotifyApp extends StatelessWidget {
  final AppRouter appRouter;
  const SpotifyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ThemeCubit())],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (_, child) {
          return BlocBuilder<ThemeCubit, ThemeMode>(
            builder: (context, mode) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'spotify app',
              darkTheme: AppTheme.darkTheme,
              theme: AppTheme.lightTheme,
              themeMode: mode,
              onGenerateRoute: appRouter.generateRoute,
              initialRoute: Routes.getStartedScreen,
            ),
          );
        },
      ),
    );
  }
}
