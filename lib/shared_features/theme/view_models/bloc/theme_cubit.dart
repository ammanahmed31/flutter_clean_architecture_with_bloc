import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../data/data_sources/themes.dart';
import '../../data/models/theme_model.dart';

class ThemeCubit extends HydratedCubit<ThemeModel> {
  /// default theme is system theme mode
  ThemeCubit() : super(AppThemeData.system);

  void changeTheme(ThemeModel theme) => emit(theme);

  @override
  ThemeModel? fromJson(Map<String, dynamic> json) {
    return AppThemeData.getThemeByMode(ThemeMode.values[json['theme'] ?? 0]);
  }

  @override
  Map<String, dynamic>? toJson(ThemeModel state) => {'theme': state.themeMode.index};
}
