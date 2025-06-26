part of 'app_theme.dart';

/// Unified AppColors class that can create both light and dark variants
class _AppColors {
  // Properties for all colors
  final Color primary;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color primaryLight;

  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;

  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;

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

  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;

  final Color background;
  final Color onBackground;

  final Color outline;
  final Color outlineVariant;

  final Color shadow;
  final Color scrim;
  final Color inputFieldIconColor;
  final Color appbarColor;
  final Color cardColor;
  final Color canvasColor;

  /// Private constructor for internal use
  const _AppColors._({
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.primaryLight,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
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
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.background,
    required this.onBackground,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inputFieldIconColor,
    required this.appbarColor,
    required this.cardColor,
    required this.canvasColor,
  });

  /// Factory constructor for light theme colors
  factory _AppColors.light() {
    return const _AppColors._(
      // Primary colors
      primary: Color(0xFF0A6CCF),
      // Ocean Blue
      onPrimary: Colors.white,
      primaryContainer: Color(0xFFD0E4FF),
      // Light Ocean Blue
      onPrimaryContainer: Color(0xFF083A6F),
      // Dark Ocean Blue
      primaryLight: Color(0xFFF4F9FF),
      // Pale Blue

      // Secondary colors
      secondary: Color(0xFF05C3FF),
      // Light Blue
      onSecondary: Colors.white,
      secondaryContainer: Color(0xFFE0F7FF),
      // Very Light Blue
      onSecondaryContainer: Color(0xFF0277BD),
      // Darker Blue

      // Error colors
      error: Color(0xFFF44336),
      // Material Red
      onError: Colors.white,
      errorContainer: Color(0xFFFFDAD6),
      // Light Red
      onErrorContainer: Color(0xFFBA000D),
      // Dark Red

      // Success colors
      success: Color(0xFF4CAF50),
      // Material Green
      onSuccess: Colors.white,
      successContainer: Color(0xFFDCEDC8),
      // Light Green
      onSuccessContainer: Color(0xFF2E7D32),
      // Dark Green

      // Info colors
      info: Color(0xFF2196F3),
      // Material Blue
      onInfo: Colors.white,
      infoContainer: Color(0xFFE3F2FD),
      // Light Blue
      onInfoContainer: Color(0xFF0D47A1),
      // Dark Blue

      // Warning colors
      warning: Color(0xFFFFC107),
      // Material Amber
      onWarning: Colors.black,
      warningContainer: Color(0xFFFFF8E1),
      // Light Amber
      onWarningContainer: Color(0xFFFF6F00),
      // Dark Amber

      // Neutral colors
      neutral: Color(0xFF607D8B),
      // Blue Grey
      onNeutral: Colors.white,
      neutralContainer: Color(0xFFECEFF1),
      // Light Blue Grey
      onNeutralContainer: Color(0xFF263238),
      // Dark Blue Grey

      // Neutral Variant colors
      neutralVariant: Color(0xFF78909C),
      // Blue Grey 400
      onNeutralVariant: Colors.white,
      neutralVariantContainer: Color(0xFFCFD8DC),
      // Blue Grey 100
      onNeutralVariantContainer: Color(0xFF455A64),
      // Blue Grey 700

      // Neutral Muted colors
      neutralMuted: Color(0xFF9E9E9E),
      // Grey 500
      onNeutralMuted: Colors.white,
      neutralMutedContainer: Color(0xFFF5F5F5),
      // Grey 100
      onNeutralMutedContainer: Color(0xFF616161),
      // Grey 700

      // Surface colors
      surface: Colors.white,
      onSurface: Color(0xFF202124),
      // Almost Black
      surfaceVariant: Color(0xFFF4F9FF),
      // Very Light Blue
      onSurfaceVariant: Color(0xFF44474F),
      // Dark Gray

      // Background colors
      background: Color(0xFFF4F9FF),
      // Pale Blue
      onBackground: Color(0xFF202124),
      // Almost Black

      // Outline colors
      outline: Color(0xFFDAE4F2),
      // Light Blue Gray
      outlineVariant: Color(0xFFBDCEE8),
      // Blue Gray

      // Utility colors
      shadow: Color(0x40000000),
      // Black with 25% opacity
      scrim: Color(0x52000000),
      // Black with 32% opacity
      inputFieldIconColor: Color(0xFFC1D6E1),
      // Blue Gray
      appbarColor: Colors.white,
      cardColor: Colors.white,
      canvasColor: Color(0xFFF4F9FF), // Pale Blue
    );
  }

  factory _AppColors.darkV2() {
    return const _AppColors._(
        // Primary colors - more whitish blue tint
        primary: Color(0xFF7EB1F7),
        // Lighter, whiter blue
        onPrimary: Color(0xFF0A1A2F),
        // Very dark blue
        primaryContainer: Color(0xFF2E4C78),
        // Muted blue with gray undertone
        onPrimaryContainer: Color(0xFFD9E6FA),
        // Very light blue, almost white
        primaryLight: Color(0xFF3B5C92),
        // Medium blue with gray undertone

        // Secondary colors - whitish teal tint
        secondary: Color(0xFF7BDAD1),
        // Lighter, whiter teal
        onSecondary: Color(0xFF0A2825),
        // Very dark teal
        secondaryContainer: Color(0xFF2B5F59),
        // Muted teal with gray undertone
        onSecondaryContainer: Color(0xFFCFF2EF),
        // Very light teal, almost white

        // Error colors - whiter red tint
        error: Color(0xFFF48FB1),
        // Lighter pink-red
        onError: Color(0xFF2F1B24),
        // Very dark red
        errorContainer: Color(0xFF8A3A57),
        // Muted red with gray undertone
        onErrorContainer: Color(0xFFF9DDE7),
        // Very light pink, almost white

        // Success colors - whiter green tint
        success: Color(0xFF9CCC9C),
        // Lighter, whiter green
        onSuccess: Color(0xFF193A19),
        // Very dark green
        successContainer: Color(0xFF4B6F4B),
        // Muted green with gray undertone
        onSuccessContainer: Color(0xFFE0F0E0),
        // Very light green, almost white

        // Info colors - more subdued
        info: Color(0xFF5C93C6),
        // Less saturated blue
        onInfo: Colors.black,
        infoContainer: Color(0xFF1A3A5E),
        // Deeper, less bright blue
        onInfoContainer: Color(0xFFD0DFF2),
        // Muted light blue

        // Warning colors - more subdued
        warning: Color(0xFFFFB74D),
        // Softer, less bright amber
        onWarning: Colors.black,
        warningContainer: Color(0xFF805B36),
        // Deeper, more subtle amber
        onWarningContainer: Color(0xFFFFE0B2),
        // Muted light amber

        // Neutral colors - whitish tints
        neutral: Color(0xFF9EACB9),
        // Light blue-gray
        onNeutral: Color(0xFF1A1A1D),
        // Very dark gray
        neutralContainer: Color(0xFF3D4654),
        // Blue-gray with white undertone
        onNeutralContainer: Color(0xFFE5EBF0),
        // Very light blue-gray

        // Neutral Variant colors - whitish tints
        neutralVariant: Color(0xFFAEB8C4),
        // Light gray-blue
        onNeutralVariant: Color(0xFF1D2025),
        // Very dark gray
        neutralVariantContainer: Color(0xFF464C59),
        // Medium gray with blue tint
        onNeutralVariantContainer: Color(0xFFE8ECF0),
        // Very light gray-blue

        // Neutral Muted colors
        neutralMuted: Color(0xFFBDBDBD),
        // Grey 400 for dark theme
        onNeutralMuted: Colors.black,
        neutralMutedContainer: Color(0xFF616161),
        // Grey 700
        onNeutralMutedContainer: Color(0xFFF5F5F5),
        // Grey 100

        // Surface colors - whiter tints
        surface: Color(0xFF2D2D33),
        // Dark gray with slight blue undertone
        onSurface: Color(0xFFF5F5F7),
        // Very light gray, almost white
        surfaceVariant: Color(0xFF3A3A45),
        // Slightly lighter dark blue-gray
        onSurfaceVariant: Color(0xFFE0E0E5),
        // Light gray with blue tint

        // Background colors - whiter tints
        background: Color(0xFF232329),
        // Dark with slight blue undertone
        onBackground: Color(0xFFF5F5F7),
        // Very light gray, almost white

        // Outline colors - whiter tints
        outline: Color(0xFF626881),
        // Medium gray with blue undertone
        outlineVariant: Color(0xFF767A8A),
        // Light gray with blue undertone

        // Utility colors - refined with whiter tints
        shadow: Color(0x40000000),
        // Black with 25% opacity (softer)
        scrim: Color(0x52000000),
        // Black with 32% opacity (softer)
        inputFieldIconColor: Color(0xFFB0BEC5),
        // Very light blue-gray
        appbarColor: Color(0xFF2F3542),
        // Medium-dark with blue undertone
        cardColor: Color(0xFF353945),
        // Medium-dark with slate undertone
        canvasColor: Color(0xFF232329) // Dark with slight blue undertone
        );
  }

  /// Factory constructor for dark theme colors
  // ignore: unused_element
  factory _AppColors.dark() {
    return const _AppColors._(
      // Primary colors
      primary: Color(0xFF58A9FF),
      // Lighter Ocean Blue for dark theme
      onPrimary: Colors.black,
      primaryContainer: Color(0xFF004C99),
      // Darker Ocean Blue
      onPrimaryContainer: Color(0xFFD0E4FF),
      // Light Blue
      primaryLight: Color(0xFF0A4074),
      // Deep Blue

      // Secondary colors
      secondary: Color(0xFF58E2FF),
      // Brighter Light Blue
      onSecondary: Colors.black,
      secondaryContainer: Color(0xFF037D99),
      // Dark Teal
      onSecondaryContainer: Color(0xFFE0F7FF),
      // Very Light Blue

      // Error colors
      error: Color(0xFFFF8A80),
      // Lighter Material Red
      onError: Colors.black,
      errorContainer: Color(0xFFB71C1C),
      // Dark Red
      onErrorContainer: Color(0xFFFFDAD6),
      // Light Red

      // Success colors
      success: Color(0xFF81C784),
      // Lighter Material Green
      onSuccess: Colors.black,
      successContainer: Color(0xFF2E7D32),
      // Dark Green
      onSuccessContainer: Color(0xFFDCEDC8),
      // Light Green

      // Info colors
      info: Color(0xFF64B5F6),
      // Light Blue
      onInfo: Colors.black,
      infoContainer: Color(0xFF0D47A1),
      // Dark Blue
      onInfoContainer: Color(0xFFE3F2FD),
      // Light Blue

      // Warning colors
      warning: Color(0xFFFFD54F),
      // Amber 300
      onWarning: Colors.black,
      warningContainer: Color(0xFFF57F17),
      // Amber 900
      onWarningContainer: Color(0xFFFFF8E1),
      // Amber 50

      // Neutral colors
      neutral: Color(0xFFB0BEC5),
      // Blue Grey 200
      onNeutral: Colors.black,
      neutralContainer: Color(0xFF455A64),
      // Blue Grey 700
      onNeutralContainer: Color(0xFFECEFF1),
      // Blue Grey 50

      // Neutral Variant colors
      neutralVariant: Color(0xFF90A4AE),
      // Blue Grey 300
      onNeutralVariant: Colors.black,
      neutralVariantContainer: Color(0xFF546E7A),
      // Blue Grey 600
      onNeutralVariantContainer: Color(0xFFCFD8DC),
      // Blue Grey 100

      // Neutral Muted colors
      neutralMuted: Color(0xFFE0E0E0),
      // Grey 300
      onNeutralMuted: Colors.black,
      neutralMutedContainer: Color(0xFF757575),
      // Grey 600
      onNeutralMutedContainer: Color(0xFFF5F5F5),
      // Grey 100

      // Surface colors
      surface: Color(0xFF1A1A1A),
      // Dark Gray
      onSurface: Colors.white,
      surfaceVariant: Color(0xFF252836),
      // Dark Blue Gray
      onSurfaceVariant: Color(0xFFCACACA),
      // Light Gray

      // Background colors
      background: Color(0xFF121212),
      // Material Dark Background
      onBackground: Colors.white,

      // Outline colors
      outline: Color(0xFF3A4366),
      // Dark Blue Gray
      outlineVariant: Color(0xFF515B7A),
      // Medium Blue Gray

      // Utility colors
      shadow: Color(0x73000000),
      // Black with 45% opacity
      scrim: Color(0x80000000),
      // Black with 50% opacity
      inputFieldIconColor: Color(0xFFC0D6E5),
      // Blue Gray
      appbarColor: Color(0xFF172133),
      // Dark Blue
      cardColor: Color(0xFF1E293B),
      // Dark Blue Gray
      canvasColor: Color(0xFF121212), // Material Dark Background
    );
  }

  /// Factory constructor for dark gray theme colors
  // ignore: unused_element
  factory _AppColors.darkGray() {
    return const _AppColors._(
      // Primary colors
      primary: Color(0xFF546E7A),
      // Blue Gray
      onPrimary: Colors.white,
      primaryContainer: Color(0xFF37474F),
      // Dark Blue Gray
      onPrimaryContainer: Color(0xFFCFD8DC),
      // Light Blue Gray
      primaryLight: Color(0xFF78909C),
      // Light Blue Gray

      // Secondary colors
      secondary: Color(0xFF607D8B),
      // Blue Gray
      onSecondary: Colors.white,
      secondaryContainer: Color(0xFF455A64),
      // Dark Blue Gray
      onSecondaryContainer: Color(0xFFECEFF1),
      // Light Blue Gray

      // Error colors
      error: Color(0xFFCF6679),
      // Muted Red
      onError: Colors.white,
      errorContainer: Color(0xFF7E3C42),
      // Dark Muted Red
      onErrorContainer: Color(0xFFFFD9E2),
      // Light Muted Red

      // Success colors
      success: Color(0xFF81C784),
      // Muted Green
      onSuccess: Colors.black,
      successContainer: Color(0xFF2E7D32),
      // Dark Green
      onSuccessContainer: Color(0xFFDCEDC8),
      // Light Green

      // Info colors
      info: Color(0xFF64B5F6),
      // Light Blue
      onInfo: Colors.black,
      infoContainer: Color(0xFF1565C0),
      // Dark Blue
      onInfoContainer: Color(0xFFE3F2FD),
      // Light Blue

      // Warning colors
      warning: Color(0xFFFFD54F),
      // Amber 300
      onWarning: Colors.black,
      warningContainer: Color(0xFFF57F17),
      // Amber 900
      onWarningContainer: Color(0xFFFFF8E1),
      // Amber 50

      // Neutral colors
      neutral: Color(0xFF9E9E9E),
      // Grey 500
      onNeutral: Colors.black,
      neutralContainer: Color(0xFF616161),
      // Grey 700
      onNeutralContainer: Color(0xFFF5F5F5),
      // Grey 100

      // Neutral Variant colors
      neutralVariant: Color(0xFFBDBDBD),
      // Grey 400
      onNeutralVariant: Colors.black,
      neutralVariantContainer: Color(0xFF757575),
      // Grey 600
      onNeutralVariantContainer: Color(0xFFEEEEEE),
      // Grey 200

      // Neutral Muted colors
      neutralMuted: Color(0xFFE0E0E0),
      // Grey 300
      onNeutralMuted: Colors.black,
      neutralMutedContainer: Color(0xFF424242),
      // Grey 800
      onNeutralMutedContainer: Color(0xFFFAFAFA),
      // Grey 50

      // Surface colors
      surface: Color(0xFF202020),
      // Dark Gray
      onSurface: Colors.white,
      surfaceVariant: Color(0xFF2A2A2A),
      // Slightly Lighter Gray
      onSurfaceVariant: Color(0xFFDDDDDD),
      // Light Gray

      // Background colors
      background: Color(0xFF121212),
      // Dark Gray
      onBackground: Colors.white,

      // Outline colors
      outline: Color(0xFF4A4A4A),
      // Medium Gray
      outlineVariant: Color(0xFF6E6E6E),
      // Light Medium Gray

      // Utility colors
      shadow: Color(0x66000000),
      // Black with 40% opacity
      scrim: Color(0x80000000),
      // Black with 50% opacity
      inputFieldIconColor: Color(0xFFB0BEC5),
      // Blue Gray
      appbarColor: Color(0xFF1F292E),
      // Dark Blue Gray
      cardColor: Color(0xFF263238),
      // Dark Blue Gray
      canvasColor: Color(0xFF121212), // Dark Gray
    );
  }

  // ignore: unused_element
  factory _AppColors.lightGray() {
    return const _AppColors._(
      // Primary colors
      primary: Color(0xFF546E7A),
      // Same Blue Gray for consistency
      onPrimary: Colors.white,
      // White text on primary
      primaryContainer: Color(0xFFECEFF1),
      // Very Light Blue Gray
      onPrimaryContainer: Color(0xFF263238),
      // Dark Blue Gray text
      primaryLight: Color(0xFFB0BEC5),
      // Lighter Blue Gray

      // Secondary colors
      secondary: Color(0xFF607D8B),
      // Same Blue Gray for consistency
      onSecondary: Colors.white,
      // White text on secondary
      secondaryContainer: Color(0xFFCFD8DC),
      // Light Blue Gray
      onSecondaryContainer: Color(0xFF263238),
      // Dark Blue Gray text

      // Error colors
      error: Color(0xFFB00020),
      // Standard Material Design error
      onError: Colors.white,
      // White text on error
      errorContainer: Color(0xFFFFDAD6),
      // Light Red
      onErrorContainer: Color(0xFF410002),
      // Dark Red text

      // Success colors
      success: Color(0xFF4CAF50),
      // Standard Green
      onSuccess: Colors.white,
      // White text on success
      successContainer: Color(0xFFDCEDC8),
      // Light Green
      onSuccessContainer: Color(0xFF1B5E20),
      // Dark Green text

      // Info colors
      info: Color(0xFF2196F3),
      // Blue
      onInfo: Colors.white,
      // White text on info
      infoContainer: Color(0xFFE3F2FD),
      // Light Blue
      onInfoContainer: Color(0xFF0D47A1),
      // Dark Blue text

      // Warning colors
      warning: Color(0xFFFFC107),
      // Amber
      onWarning: Colors.black,
      // Black text on warning
      warningContainer: Color(0xFFFFF8E1),
      // Light Amber
      onWarningContainer: Color(0xFFF57F17),
      // Dark Amber text

      // Neutral colors
      neutral: Color(0xFF9E9E9E),
      // Grey 500
      onNeutral: Colors.black,
      // Black text on neutral
      neutralContainer: Color(0xFFEEEEEE),
      // Grey 200
      onNeutralContainer: Color(0xFF424242),
      // Grey 800 text

      // Neutral Variant colors
      neutralVariant: Color(0xFFBDBDBD),
      // Grey 400
      onNeutralVariant: Colors.black,
      // Black text on neutral variant
      neutralVariantContainer: Color(0xFFF5F5F5),
      // Grey 100
      onNeutralVariantContainer: Color(0xFF616161),
      // Grey 700 text

      // Neutral Muted colors
      neutralMuted: Color(0xFF757575),
      // Grey 600
      onNeutralMuted: Colors.white,
      // White text on neutral muted
      neutralMutedContainer: Color(0xFFFAFAFA),
      // Grey 50
      onNeutralMutedContainer: Color(0xFF212121),
      // Grey 900 text

      // Surface colors
      surface: Colors.white,
      // White surface
      onSurface: Color(0xFF333333),
      // Dark Gray text
      surfaceVariant: Color(0xFFF5F5F5),
      // Almost White
      onSurfaceVariant: Color(0xFF666666),
      // Medium Gray text

      // Background colors
      background: Color(0xFFFAFAFA),
      // Very Light Gray background
      onBackground: Color(0xFF333333),
      // Dark Gray text

      // Outline colors
      outline: Color(0xFFDDDDDD),
      // Light Gray outline
      outlineVariant: Color(0xFFBDBDBD),
      // Medium Light Gray outline

      // Utility colors
      shadow: Color(0x33000000),
      // Black with 20% opacity
      scrim: Color(0x52000000),
      // Black with 32% opacity
      inputFieldIconColor: Color(0xFF78909C),
      // Blue Gray
      appbarColor: Colors.white,
      // White app bar
      cardColor: Colors.white,
      // White card
      canvasColor: Color(0xFFFAFAFA), // Very Light Gray canvas
    );
  }
}
