import 'package:flutter/material.dart';

import 'colors.dart';

final cardinButtonThemeData = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)));

final cardinOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: cardinBlack));

final cardinDarkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: cardinWhite));
