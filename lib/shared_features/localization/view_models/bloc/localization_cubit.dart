import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../data/data_sources/localizations.dart';
import '../../data/models/localization_model.dart';

class LocalizationCubit extends HydratedCubit<LocalizationModel> {
  LocalizationCubit() : super(AppLocalizationData.defaultLocalization);

  void changeLocale(LocalizationModel localization) => emit(localization);

  @override
  LocalizationModel? fromJson(Map<String, dynamic> json) {
    return LocalizationModel.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(LocalizationModel state) => state.toJson();
}
