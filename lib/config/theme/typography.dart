part of 'app_theme.dart';

/// Typography styles for the application
class _Typography {
  /// Creates dark theme text styles
  TextTheme get textTheme {
    return TextTheme(
      // Display styles
      displayLarge: TextStyle(
        fontSize: _TypographyConst.displayLarge,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),
      displayMedium: TextStyle(
        fontSize: _TypographyConst.displayMedium,
        fontWeight: FontWeight.w300,
        fontFamily: fontFamily,
      ),
      displaySmall: TextStyle(
        fontSize: _TypographyConst.displaySmall,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),

      // Headline styles
      headlineLarge: TextStyle(
        fontSize: _TypographyConst.headlineLarge,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),
      headlineMedium: TextStyle(
        fontSize: _TypographyConst.headlineMedium,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),
      headlineSmall: TextStyle(
        fontSize: _TypographyConst.headlineSmall,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),

      // Title styles
      titleLarge: TextStyle(
        fontSize: _TypographyConst.titleLarge,
        fontWeight: _TypographyConst.weightMedium,
        fontFamily: fontFamily,
      ),
      titleMedium: TextStyle(
        fontSize: _TypographyConst.titleMedium,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),
      titleSmall: TextStyle(
        fontSize: _TypographyConst.titleSmall,
        fontWeight: _TypographyConst.weightMedium,
        fontFamily: fontFamily,
      ),

      // Label styles
      labelLarge: TextStyle(
        fontSize: _TypographyConst.labelLarge,
        fontWeight: _TypographyConst.weightMedium,
        fontFamily: fontFamily,
      ),
      labelMedium: TextStyle(
        fontSize: _TypographyConst.labelMedium,
        fontWeight: _TypographyConst.weightMedium,
        fontFamily: fontFamily,
      ),
      labelSmall: TextStyle(
        fontSize: _TypographyConst.labelSmall,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),

      // Body styles
      bodyLarge: TextStyle(
        fontSize: _TypographyConst.bodyLarge,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        fontSize: _TypographyConst.bodyMedium,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),
      bodySmall: TextStyle(
        fontSize: _TypographyConst.bodySmall,
        fontWeight: _TypographyConst.weightRegular,
        fontFamily: fontFamily,
      ),
    );
  }

  String get fontFamily => 'outfit';
}

class _TypographyConst {
  // Font weights
  static const FontWeight weightRegular = FontWeight.w400;
  static const FontWeight weightMedium = FontWeight.w500;
  static const FontWeight weightSemiBold = FontWeight.w600;
  static const FontWeight weightBold = FontWeight.w700;

  // Font sizes
  static const double displayLarge = 57.0;
  static const double displayMedium = 45.0;
  static const double displaySmall = 36.0;

  static const double headlineLarge = 32.0;
  static const double headlineMedium = 28.0;
  static const double headlineSmall = 24.0;

  // label
  static const double labelLarge = 14.0;
  static const double labelMedium = 12.0;
  static const double labelSmall = 11.0;

  static const double titleLarge = 22.0;
  static const double titleMedium = 16.0;
  static const double titleSmall = 14.0;

  static const double bodyLarge = 16.0;
  static const double bodyMedium = 14.0;
  static const double bodySmall = 12.0;
}
