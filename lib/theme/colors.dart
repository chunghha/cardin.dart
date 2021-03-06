import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

final cardinBlack = '#192821'.toColor();
final cardinWhite = '#f8eef9'.toColor();
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
final cardinBrightBlue = '#7ea1cc'.toColor();
final cardinBrightMagenta = '#da70d6'.toColor();
final cardinBrightCyan = '#33a5af'.toColor();

final cardinErrorColor = '#F75455'.toColor();

final cardinLightColorScheme = ColorScheme.fromSwatch(
    // * http://mcg.mbitson.com/#!?mcgpalette0=%23d75455
    primarySwatch: MaterialColor(cardinBrightRed.value, {
      50: '#faeaeb'.toColor(),
      100: '#f3cccc'.toColor(),
      200: '#ebbaaa'.toColor(),
      300: '#e38788'.toColor(),
      400: '#dd6e6f'.toColor(),
      500: cardinBrightRed,
      600: '#d34d4e'.toColor(),
      700: '#cd4344'.toColor(),
      800: '#c73a3b'.toColor(),
      900: '#be292a'.toColor(),
    }),
    primaryColorDark: cardinBrightCyan,
    accentColor: cardinBrightRed,
    cardColor: cardinWhite,
    backgroundColor: cardinWhite,
    errorColor: cardinErrorColor,
    brightness: Brightness.light);

final cardinDarkColorScheme = ColorScheme.fromSwatch(
    // * http://mcg.mbitson.com/#!?mcgpalette0=%23f75455
    primarySwatch: MaterialColor(cardinBrightRed.value, {
      50: '#feeaeb'.toColor(),
      100: '#fdcccc'.toColor(),
      200: '#fbaaaa'.toColor(),
      300: '#f98788'.toColor(),
      400: '#f86e6f'.toColor(),
      500: cardinBrightRed,
      600: '#fc4d4e'.toColor(),
      700: '#f54344'.toColor(),
      800: '#f33a3b'.toColor(),
      900: '#f1292a'.toColor(),
    }),
    primaryColorDark: cardinCyan,
    accentColor: cardinRed,
    cardColor: cardinBlack,
    backgroundColor: cardinBlack,
    errorColor: cardinErrorColor,
    brightness: Brightness.dark);
