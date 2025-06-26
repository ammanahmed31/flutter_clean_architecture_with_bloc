import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../models/localization_model.dart';

class AppLocalizationData {
  static List<LocalizationModel> get localizations {
    return [LocalizationModel(locale: const Locale('en', 'US'), name: AppStrings.english), LocalizationModel(locale: const Locale('ar', 'SA'), name: AppStrings.arabic)];
  }

  static LocalizationModel get defaultLocalization => localizations.first;

  static LocalizationModel getLocalizationByLocale(Locale locale) {
    return localizations.firstWhere((l) => l.locale.languageCode == locale.languageCode && l.locale.countryCode == locale.countryCode, orElse: () => defaultLocalization);
  }
}
