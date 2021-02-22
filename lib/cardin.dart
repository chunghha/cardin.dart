library cardin;

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

final cardinBlack = '#192821'.toColor();
final cardinWhite = '#d8dee9'.toColor();
final cardinRed = '#d75455'.toColor();
final cardinGreen = '#00cb24'.toColor();
final cardinYellow = '#f7c242'.toColor();
final cardinBlue = '#0095ff'.toColor();
final cardinMagenta = '#8b81c3'.toColor();
final cardinCyan = '#11858f'.toColor();

final cardinBrightBlack = '#223c28'.toColor();
final cardinBrightWhite = '#eceff4'.toColor();
final cardinBrightRed = '#f75455'.toColor();
final cardinBrightGreen = '#a5c051'.toColor();
final cardinBrightYellow = '#f7d94c'.toColor();
final cardinBrighttBlue = '#7ea1cc'.toColor();
final cardinBrightMagenta = '#b35c37'.toColor();
final cardinBrightCyan = '#33a5af'.toColor();

final cardinErrorColor = '#F75455'.toColor();

final cardinLightColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
    primarySwatch: MaterialColor(cardinBrightRed.value, {
      50: '#FDEEE9'.toColor(),
      100: '#FBDDD2'.toColor(),
      200: '#F6BBA6'.toColor(),
      300: '#F29879'.toColor(),
      400: '#ED764D'.toColor(),
      500: cardinBrightRed,
      600: '#BA431A'.toColor(),
      700: '#8C3213'.toColor(),
      800: '#5D220D'.toColor(),
      900: '#2F1106'.toColor(),
    }),
    primaryColorDark: cardinBrightCyan,
    accentColor: cardinBrightRed,
    cardColor: cardinWhite,
    backgroundColor: cardinWhite,
    errorColor: cardinErrorColor,
    brightness: Brightness.light);

final cardinDarkColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
    primarySwatch: MaterialColor(cardinBrightRed.value, {
      50: '#FDEEE9'.toColor(),
      100: '#FBDDD2'.toColor(),
      200: '#F6BBA6'.toColor(),
      300: '#F29879'.toColor(),
      400: '#ED764D'.toColor(),
      500: cardinBrightRed,
      600: '#BA431A'.toColor(),
      700: '#8C3213'.toColor(),
      800: '#5D220D'.toColor(),
      900: '#2F1106'.toColor(),
    }),
    primaryColorDark: cardinCyan,
    accentColor: cardinRed,
    cardColor: cardinBlack,
    backgroundColor: cardinBlack,
    errorColor: cardinErrorColor,
    brightness: Brightness.dark);

final _cardinTextStyle = TextStyle(
  fontFamily: 'Nunito',
  package: 'cardin',
  fontFamilyFallback: [
    'Liberation Serif',
    'Noto Sans CJK',
    'Tibetan Machine Uni',
  ],
);
final cardinHeadline1Style = _cardinTextStyle;
final cardinHeadline2Style = _cardinTextStyle;
final cardinHeadline3Style = _cardinTextStyle;
final cardinHeadline4Style = _cardinTextStyle;
final cardinHeadline5Style = _cardinTextStyle;
final cardinHeadline6Style = _cardinTextStyle;
final cardinSubtitle1Style = _cardinTextStyle;
final cardinSubtitle2Style = _cardinTextStyle;
final cardinBodyText1Style = _cardinTextStyle;
final cardinBodyText2Style = _cardinTextStyle;
final cardinCaptionStyle = _cardinTextStyle;
final cardinButtonStyle = _cardinTextStyle;
final cardinOverlineStyle = _cardinTextStyle;

final cardinTextTheme = TextTheme(
    headline1: cardinHeadline1Style,
    headline2: cardinHeadline2Style,
    headline3: cardinHeadline3Style,
    headline4: cardinHeadline4Style,
    headline5: cardinHeadline5Style,
    headline6: cardinHeadline6Style,
    subtitle1: cardinSubtitle1Style,
    subtitle2: cardinSubtitle2Style,
    bodyText1: cardinBodyText1Style,
    bodyText2: cardinBodyText2Style,
    caption: cardinCaptionStyle,
    button: cardinButtonStyle,
    overline: cardinOverlineStyle);

final cardinButtonThemeData = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)));

final cardinOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: cardinBlack));

final cardinDarkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: cardinWhite));

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
