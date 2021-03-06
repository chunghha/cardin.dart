library cardin;

import 'dart:ui';
import 'package:flutter/material.dart';

import 'theme/button_styles.dart';
import 'theme/colors.dart';
import 'theme/text_styles.dart';

final cardinAppBarLightTheme = AppBarTheme(
  brightness: Brightness.light,
  color: cardinBrightWhite,
  textTheme: cardinTextTheme.copyWith(
      headline6: cardinHeadline6Style.copyWith(
    color: cardinBrightBlack,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  )),
  iconTheme: IconThemeData(color: cardinBrightBlack),
  actionsIconTheme: IconThemeData(color: cardinBrightRed),
);

final cardinAppBarDarkTheme = AppBarTheme(
  brightness: Brightness.dark,
  color: cardinCyan,
  textTheme: cardinTextTheme.copyWith(
      headline6: cardinHeadline6Style.copyWith(
    color: cardinWhite,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  )),
  iconTheme: IconThemeData(color: cardinWhite),
  actionsIconTheme: IconThemeData(color: cardinRed),
);

final cardinTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: cardinLightColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(cardinLightColorScheme.primary),
    canvasColor: cardinLightColorScheme.background,
    accentColor: cardinLightColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(cardinLightColorScheme.secondary),
    scaffoldBackgroundColor: cardinLightColorScheme.background,
    bottomAppBarColor: cardinLightColorScheme.surface,
    cardColor: cardinLightColorScheme.surface,
    dividerColor: cardinLightColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: cardinLightColorScheme.background,
    dialogBackgroundColor: cardinLightColorScheme.background,
    errorColor: cardinLightColorScheme.error,
    textTheme: cardinTextTheme,
    indicatorColor: cardinLightColorScheme.onPrimary,
    applyElevationOverlayColor: false,
    colorScheme: cardinLightColorScheme,
    buttonTheme: cardinButtonThemeData,
    outlinedButtonTheme: cardinOutlinedButtonThemeData,
    toggleableActiveColor: cardinRed,
    appBarTheme: cardinAppBarDarkTheme);

final cardinLightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: cardinLightColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(cardinLightColorScheme.primary),
    canvasColor: cardinLightColorScheme.background,
    accentColor: cardinLightColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(cardinLightColorScheme.secondary),
    scaffoldBackgroundColor: cardinLightColorScheme.background,
    bottomAppBarColor: cardinLightColorScheme.surface,
    cardColor: cardinLightColorScheme.surface,
    dividerColor: cardinLightColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: cardinLightColorScheme.background,
    dialogBackgroundColor: cardinLightColorScheme.background,
    errorColor: cardinLightColorScheme.error,
    textTheme: cardinTextTheme,
    indicatorColor: cardinLightColorScheme.onPrimary,
    applyElevationOverlayColor: false,
    colorScheme: cardinLightColorScheme,
    buttonTheme: cardinButtonThemeData,
    outlinedButtonTheme: cardinOutlinedButtonThemeData,
    toggleableActiveColor: cardinRed,
    appBarTheme: cardinAppBarLightTheme);

final cardinDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: cardinDarkColorScheme.surface,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(cardinDarkColorScheme.surface),
    canvasColor: cardinDarkColorScheme.background,
    accentColor: cardinDarkColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(cardinDarkColorScheme.secondary),
    scaffoldBackgroundColor: cardinDarkColorScheme.background,
    bottomAppBarColor: cardinDarkColorScheme.surface,
    cardColor: cardinDarkColorScheme.surface,
    dividerColor: cardinDarkColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: cardinDarkColorScheme.background,
    dialogBackgroundColor: cardinDarkColorScheme.background,
    errorColor: cardinDarkColorScheme.error,
    textTheme: cardinTextTheme,
    indicatorColor: cardinDarkColorScheme.onPrimary,
    applyElevationOverlayColor: true,
    colorScheme: cardinDarkColorScheme,
    buttonTheme: cardinButtonThemeData,
    outlinedButtonTheme: cardinDarkOutlinedButtonThemeData,
    toggleableActiveColor: cardinCyan,
    appBarTheme: cardinAppBarDarkTheme);
