import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  // Input field
  final Color inputFieldIconColor;

  // Semantic colors
  final Color success;
  final Color onSuccess;
  final Color successContainer;
  final Color onSuccessContainer;

  final Color info;
  final Color onInfo;
  final Color infoContainer;
  final Color onInfoContainer;

  final Color warning;
  final Color onWarning;
  final Color warningContainer;
  final Color onWarningContainer;

  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;

  // Neutral semantic colors
  final Color neutral;
  final Color onNeutral;
  final Color neutralContainer;
  final Color onNeutralContainer;

  final Color neutralVariant;
  final Color onNeutralVariant;
  final Color neutralVariantContainer;
  final Color onNeutralVariantContainer;

  final Color neutralMuted;
  final Color onNeutralMuted;
  final Color neutralMutedContainer;
  final Color onNeutralMutedContainer;

  AppColorExtension({
    required this.inputFieldIconColor,
    required this.success,
    required this.onSuccess,
    required this.successContainer,
    required this.onSuccessContainer,
    required this.info,
    required this.onInfo,
    required this.infoContainer,
    required this.onInfoContainer,
    required this.warning,
    required this.onWarning,
    required this.warningContainer,
    required this.onWarningContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.neutral,
    required this.onNeutral,
    required this.neutralContainer,
    required this.onNeutralContainer,
    required this.neutralVariant,
    required this.onNeutralVariant,
    required this.neutralVariantContainer,
    required this.onNeutralVariantContainer,
    required this.neutralMuted,
    required this.onNeutralMuted,
    required this.neutralMutedContainer,
    required this.onNeutralMutedContainer,
  });

  @override
  AppColorExtension copyWith({
    Color? inputFieldIconColor,
    Color? success,
    Color? onSuccess,
    Color? successContainer,
    Color? onSuccessContainer,
    Color? info,
    Color? onInfo,
    Color? infoContainer,
    Color? onInfoContainer,
    Color? warning,
    Color? onWarning,
    Color? warningContainer,
    Color? onWarningContainer,
    Color? error,
    Color? onError,
    Color? errorContainer,
    Color? onErrorContainer,
    Color? neutral,
    Color? onNeutral,
    Color? neutralContainer,
    Color? onNeutralContainer,
    Color? neutralVariant,
    Color? onNeutralVariant,
    Color? neutralVariantContainer,
    Color? onNeutralVariantContainer,
    Color? neutralMuted,
    Color? onNeutralMuted,
    Color? neutralMutedContainer,
    Color? onNeutralMutedContainer,
  }) {
    return AppColorExtension(
      inputFieldIconColor: inputFieldIconColor ?? this.inputFieldIconColor,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      successContainer: successContainer ?? this.successContainer,
      onSuccessContainer: onSuccessContainer ?? this.onSuccessContainer,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      infoContainer: infoContainer ?? this.infoContainer,
      onInfoContainer: onInfoContainer ?? this.onInfoContainer,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      warningContainer: warningContainer ?? this.warningContainer,
      onWarningContainer: onWarningContainer ?? this.onWarningContainer,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      errorContainer: errorContainer ?? this.errorContainer,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      neutral: neutral ?? this.neutral,
      onNeutral: onNeutral ?? this.onNeutral,
      neutralContainer: neutralContainer ?? this.neutralContainer,
      onNeutralContainer: onNeutralContainer ?? this.onNeutralContainer,
      neutralVariant: neutralVariant ?? this.neutralVariant,
      onNeutralVariant: onNeutralVariant ?? this.onNeutralVariant,
      neutralVariantContainer: neutralVariantContainer ?? this.neutralVariantContainer,
      onNeutralVariantContainer: onNeutralVariantContainer ?? this.onNeutralVariantContainer,
      neutralMuted: neutralMuted ?? this.neutralMuted,
      onNeutralMuted: onNeutralMuted ?? this.onNeutralMuted,
      neutralMutedContainer: neutralMutedContainer ?? this.neutralMutedContainer,
      onNeutralMutedContainer: onNeutralMutedContainer ?? this.onNeutralMutedContainer,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }

    return AppColorExtension(
      inputFieldIconColor: Color.lerp(inputFieldIconColor, other.inputFieldIconColor, t)!,
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
      successContainer: Color.lerp(successContainer, other.successContainer, t)!,
      onSuccessContainer: Color.lerp(onSuccessContainer, other.onSuccessContainer, t)!,
      info: Color.lerp(info, other.info, t)!,
      onInfo: Color.lerp(onInfo, other.onInfo, t)!,
      infoContainer: Color.lerp(infoContainer, other.infoContainer, t)!,
      onInfoContainer: Color.lerp(onInfoContainer, other.onInfoContainer, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      onWarning: Color.lerp(onWarning, other.onWarning, t)!,
      warningContainer: Color.lerp(warningContainer, other.warningContainer, t)!,
      onWarningContainer: Color.lerp(onWarningContainer, other.onWarningContainer, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
      onErrorContainer: Color.lerp(onErrorContainer, other.onErrorContainer, t)!,
      neutral: Color.lerp(neutral, other.neutral, t)!,
      onNeutral: Color.lerp(onNeutral, other.onNeutral, t)!,
      neutralContainer: Color.lerp(neutralContainer, other.neutralContainer, t)!,
      onNeutralContainer: Color.lerp(onNeutralContainer, other.onNeutralContainer, t)!,
      neutralVariant: Color.lerp(neutralVariant, other.neutralVariant, t)!,
      onNeutralVariant: Color.lerp(onNeutralVariant, other.onNeutralVariant, t)!,
      neutralVariantContainer: Color.lerp(neutralVariantContainer, other.neutralVariantContainer, t)!,
      onNeutralVariantContainer: Color.lerp(onNeutralVariantContainer, other.onNeutralVariantContainer, t)!,
      neutralMuted: Color.lerp(neutralMuted, other.neutralMuted, t)!,
      onNeutralMuted: Color.lerp(onNeutralMuted, other.onNeutralMuted, t)!,
      neutralMutedContainer: Color.lerp(neutralMutedContainer, other.neutralMutedContainer, t)!,
      onNeutralMutedContainer: Color.lerp(onNeutralMutedContainer, other.onNeutralMutedContainer, t)!,
    );
  }
}
