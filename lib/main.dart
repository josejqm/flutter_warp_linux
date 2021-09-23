import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'simple_bloc_observer.dart';
import 'src/features/warp_menu/presentation/page/warp_page.dart';

import 'src/themes/themes.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData warpLightTheme = ThemeData(
      textTheme: GoogleFonts.barlowTextTheme(),
      primaryColor: AppColor.primaryColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColor.primaryColor,
        linearMinHeight: 20.0,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: warpLightTheme,
      home: const WarpPage(),
    );
  }
}
