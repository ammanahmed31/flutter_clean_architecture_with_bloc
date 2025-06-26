import 'package:flutter/material.dart' hide Typography;

import 'extensions/app_color_extension.dart';

part 'app_colors.dart';
part 'app_dimensions.dart';
part 'typography.dart';

/// App Theme class for managing both light and dark themes
class AppTheme {
  /// Get light theme data
  ThemeData get light => _buildThemeData(appColors: _AppColors.light(), dimensions: _AppDimension(), typography: _Typography(), isDark: false);

  /// Get dark theme data
  ThemeData get dark => _buildThemeData(appColors: _AppColors.darkV2(), dimensions: _AppDimension(), typography: _Typography(), isDark: true);

  /// Build theme data based on isDark parameter
  ThemeData _buildThemeData({required _AppColors appColors, required _AppDimension dimensions, required _Typography typography, required bool isDark}) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: typography.fontFamily,
      brightness: isDark ? Brightness.dark : Brightness.light,

      // Colors
      primaryColor: appColors.primary,
      scaffoldBackgroundColor: appColors.background,
      cardColor: appColors.cardColor,
      canvasColor: appColors.canvasColor,
      dividerColor: appColors.outline,
      shadowColor: appColors.shadow,

      // Color Scheme
      colorScheme: (isDark ? ColorScheme.dark : ColorScheme.light)(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: appColors.primary,
        onPrimary: appColors.onPrimary,
        primaryContainer: appColors.primaryContainer,
        onPrimaryContainer: appColors.onPrimaryContainer,
        secondary: appColors.secondary,
        onSecondary: appColors.onSecondary,
        secondaryContainer: appColors.secondaryContainer,
        onSecondaryContainer: appColors.onSecondaryContainer,
        error: appColors.error,
        onError: appColors.onError,
        errorContainer: appColors.errorContainer,
        onErrorContainer: appColors.onErrorContainer,
        surface: appColors.surface,
        onSurface: appColors.onSurface,
        surfaceVariant: appColors.surfaceVariant,
        onSurfaceVariant: appColors.onSurfaceVariant,
        background: appColors.background,
        onBackground: appColors.onBackground,
        outline: appColors.outline,
        outlineVariant: appColors.outlineVariant,
        shadow: appColors.shadow,
        scrim: appColors.scrim,
      ),

      // AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: appColors.appbarColor,
        elevation: dimensions.elevationNone,
        centerTitle: false,
        iconTheme: IconThemeData(color: appColors.onSurface),
        titleTextStyle: typography.textTheme.titleMedium!.copyWith(fontWeight: _TypographyConst.weightSemiBold, fontSize: 18.0, color: appColors.onSurface),
      ),

      // TabBar
      tabBarTheme: TabBarTheme(
        labelColor: appColors.primary,
        unselectedLabelColor: isDark ? const Color(0xffe7e7e7) : const Color(0xff757575),
        labelStyle: typography.textTheme.titleMedium!.copyWith(fontWeight: _TypographyConst.weightBold),
        unselectedLabelStyle: typography.textTheme.titleMedium!.copyWith(fontWeight: _TypographyConst.weightBold),
        indicatorColor: appColors.primary,
        indicator: UnderlineTabIndicator(borderSide: BorderSide(color: appColors.primary, width: 1.5)),
      ),

      // Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appColors.primary,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.white,
          textStyle: typography.textTheme.titleMedium!.copyWith(fontWeight: _TypographyConst.weightMedium),
          foregroundColor: appColors.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dimensions.buttonRadius)),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(appColors.primary),
          shape: WidgetStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(dimensions.buttonRadius))),
          textStyle: WidgetStateProperty.all<TextStyle>(typography.textTheme.titleMedium!.copyWith(fontWeight: _TypographyConst.weightMedium)),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(appColors.primary),
          shape: WidgetStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(dimensions.buttonRadius))),
          side: WidgetStateProperty.all<BorderSide>(BorderSide(color: appColors.primary)),
          textStyle: WidgetStateProperty.all<TextStyle>(typography.textTheme.titleMedium!.copyWith(fontWeight: _TypographyConst.weightMedium)),
        ),
      ),

      // Card
      cardTheme: CardTheme(
        color: appColors.cardColor,
        elevation: dimensions.elevationLarge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dimensions.cardRadius)),
        shadowColor: appColors.shadow,
      ),

      // Bottom Navigation
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appColors.cardColor,
        selectedItemColor: appColors.primary,
        unselectedItemColor: Colors.grey,
        elevation: dimensions.elevationNone,
      ),

      // Text Theme
      textTheme: typography.textTheme,

      // Input Decoration
      inputDecorationTheme: InputDecorationTheme(
        iconColor: appColors.inputFieldIconColor,
        hintStyle: typography.textTheme.bodyMedium!.copyWith(color: appColors.inputFieldIconColor),
        prefixIconColor: appColors.inputFieldIconColor,
        suffixIconColor: appColors.inputFieldIconColor,
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: appColors.inputFieldIconColor, width: 1.0), borderRadius: BorderRadius.circular(dimensions.inputFieldRadius)),
        border: OutlineInputBorder(borderSide: BorderSide(color: appColors.inputFieldIconColor, width: 1.0), borderRadius: BorderRadius.circular(dimensions.inputFieldRadius)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appColors.inputFieldIconColor, width: 1.0), borderRadius: BorderRadius.circular(dimensions.inputFieldRadius)),
        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: appColors.error, width: 1.0), borderRadius: BorderRadius.circular(dimensions.inputFieldRadius)),
        focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: appColors.error, width: 1.0), borderRadius: BorderRadius.circular(dimensions.inputFieldRadius)),
      ),

      // Checkbox
      checkboxTheme: CheckboxThemeData(
        side: const BorderSide(color: Colors.grey, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dimensions.smallRadius)),
        fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) return appColors.primary;
          return Colors.transparent;
        }),
        checkColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) return appColors.onPrimary;
          return Colors.grey;
        }),
      ),

      // Extensions
      extensions: [
        AppColorExtension(
          inputFieldIconColor: appColors.inputFieldIconColor,
          success: appColors.success,
          onSuccess: appColors.onSuccess,
          successContainer: appColors.successContainer,
          onSuccessContainer: appColors.onSuccessContainer,
          info: appColors.info,
          onInfo: appColors.onInfo,
          infoContainer: appColors.infoContainer,
          onInfoContainer: appColors.onInfoContainer,
          warning: appColors.warning,
          onWarning: appColors.onWarning,
          warningContainer: appColors.warningContainer,
          onWarningContainer: appColors.onWarningContainer,
          error: appColors.error,
          onError: appColors.onError,
          errorContainer: appColors.errorContainer,
          onErrorContainer: appColors.onErrorContainer,
          neutral: appColors.neutral,
          onNeutral: appColors.onNeutral,
          neutralContainer: appColors.neutralContainer,
          onNeutralContainer: appColors.onNeutralContainer,
          neutralVariant: appColors.neutralVariant,
          onNeutralVariant: appColors.onNeutralVariant,
          neutralVariantContainer: appColors.neutralVariantContainer,
          onNeutralVariantContainer: appColors.onNeutralVariantContainer,
          neutralMuted: appColors.neutralMuted,
          onNeutralMuted: appColors.onNeutralMuted,
          neutralMutedContainer: appColors.neutralMutedContainer,
          onNeutralMutedContainer: appColors.onNeutralMutedContainer,
        ),
      ],
    );
  }
}
