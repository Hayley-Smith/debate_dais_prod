import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData buildThemeData() {
  var baseTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
        titleMedium: TextStyle(
          color: englishViolet,
        ),
        headlineLarge: TextStyle(
          color: pompAndPower,
        )),
    colorScheme: ColorScheme.fromSeed(
      seedColor: pompAndPower,
    ),
    useMaterial3: true,
  );
  return baseTheme.copyWith(
      textTheme: GoogleFonts.quicksandTextTheme(baseTheme.textTheme));
}
