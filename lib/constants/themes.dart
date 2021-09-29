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
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.canvasLightColor,
    iconTheme: IconThemeData(color: Colors.grey),
    elevation: 0.0,
  ),
  textTheme: _appTextTheme,
  canvasColor: AppColors.canvasLightColor,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.canvasLightColor,
);

final ThemeData warpDarkTheme = _base.copyWith(
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.canvasDarkColor,
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 0.0,
  ),
  textTheme: GoogleFonts.barlowTextTheme(ThemeData.dark().textTheme),
  brightness: Brightness.dark,
  canvasColor: AppColors.canvasDarkColor,
  scaffoldBackgroundColor: AppColors.canvasDarkColor,
);
