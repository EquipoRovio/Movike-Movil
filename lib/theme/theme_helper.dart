import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA70001,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.whiteA70001,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.yellow400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.black900,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Cousine',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 12.fSize,
          fontFamily: 'Scada',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.amber300,
          fontSize: 60.fSize,
          fontFamily: 'Cousine',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 50.fSize,
          fontFamily: 'Salsa',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 35.fSize,
          fontFamily: 'Secular One',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 30.fSize,
          fontFamily: 'Amiri',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 25.fSize,
          fontFamily: 'Cousine',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 12.fSize,
          fontFamily: 'Scada',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Cousine',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Cousine',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF7F6833),
    primaryContainer: Color(0XFF1C1B1F),

    // Error colors
    errorContainer: Color(0XFF0367CC),
    onError: Color(0XB27E7E7E),

    // On colors(text colors)
    onPrimary: Color(0XFF0F151D),
    onPrimaryContainer: Color(0XFFD0D1D4),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber300 => Color(0XFFFFD166);

  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGrayCc
  Color get blueGray100Cc => Color(0XCCD9D9D9);

  // BlueGray
  Color get blueGray600 => Color(0XFF505F73);
  Color get blueGray800 => Color(0XFF2E4057);
  Color get blueGray900 => Color(0XFF263549);
  Color get blueGray90001 => Color(0XFF1F2B3A);

  // Gray
  Color get gray100 => Color(0XFFFAF5F5);
  Color get gray200 => Color(0XFFF0EBEB);
  Color get gray600 => Color(0XFF6E727A);
  Color get gray900 => Color(0XFF17202C);

  // Red
  Color get red800 => Color(0XFFAA4734);

  // White
  Color get whiteA700 => Color(0XFFFDFDFD);
  Color get whiteA70001 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow200 => Color(0XFFFFE099);
  Color get yellow400 => Color(0XFFFFFE60);
  Color get yellowA200 => Color(0XFFFFFD1B);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
