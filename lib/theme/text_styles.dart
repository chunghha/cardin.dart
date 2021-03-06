import 'package:flutter/material.dart';

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
