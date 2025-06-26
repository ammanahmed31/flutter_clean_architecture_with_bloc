import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../models/theme_model.dart';

class AppThemeData {
  static List<ThemeModel> get themes {
    return [
      const ThemeModel(name: AppStrings.light, themeMode: ThemeMode.light),
      const ThemeModel(name: AppStrings.dark, themeMode: ThemeMode.dark),
      const ThemeModel(name: AppStrings.system, themeMode: ThemeMode.system),
    ];
  }

  static ThemeModel get dark => themes.firstWhere((t) => t.themeMode == ThemeMode.dark);

  static ThemeModel get light => themes.firstWhere((t) => t.themeMode == ThemeMode.light);

  static ThemeModel get system => themes.firstWhere((t) => t.themeMode == ThemeMode.system);

  static ThemeModel get defaultTheme => themes.first;

  static ThemeModel getThemeByMode(ThemeMode mode) {
    return themes.firstWhere((t) => t.themeMode == mode, orElse: () => defaultTheme);
  }
}
