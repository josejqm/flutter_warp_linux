import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/sizes.dart';
import 'constants/themes.dart';
import 'business_logic/simple_bloc_observer.dart';
import 'presentation/pages/warp_page.dart';

Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();

  runApp(EasyDynamicThemeWidget(child: const MyApp()));

  
  await DesktopWindow.setMinWindowSize(WindowSize.size);
  // await DesktopWindow.setMaxWindowSize(WindowSize.size);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: warpLightTheme,
      darkTheme: warpDarkTheme,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: const WarpPage(),
    );
  }
}
