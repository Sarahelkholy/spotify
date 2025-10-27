import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void updateTheme(ThemeMode themeMode) {
    emit(themeMode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final mode = json['theme'] as String?;
    switch (mode) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.light;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'theme': state.toString().split('.').last};
  }
}
