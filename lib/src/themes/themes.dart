import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors {
  static const primaryColor = Color(0xfff68b1f);
  static const canvasLightColor = Color(0xfffafafa);
  static const canvasDarkColor = Color(0xff101010);
}

final TextTheme _appTextTheme = GoogleFonts.barlowTextTheme();

final ThemeData _base = ThemeData(
  textTheme: GoogleFonts.barlowTextTheme(),
  primaryColor: AppColors.primaryColor,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.primaryColor,
    linearMinHeight: 20.0,
  ),
);

final ThemeData warpLightTheme = _base.copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.canvasLightColor,
    iconTheme: const IconThemeData(color: Colors.grey),
    elevation: 0.0,
    titleTextStyle: GoogleFonts.barlowTextTheme(ThemeData.light().textTheme)
        .headline2!
        .copyWith(fontWeight: FontWeight.bold),
  ),
  textTheme: _appTextTheme,
  canvasColor: AppColors.canvasLightColor,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.canvasLightColor,
);

final ThemeData warpDarkTheme = _base.copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.canvasDarkColor,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle:
        GoogleFonts.barlowTextTheme(ThemeData.dark().textTheme).headline4,
    elevation: 0.0,
  ),
  textTheme: GoogleFonts.barlowTextTheme(ThemeData.dark().textTheme),
  brightness: Brightness.dark,
  canvasColor: AppColors.canvasDarkColor,
  scaffoldBackgroundColor: AppColors.canvasDarkColor,
);
