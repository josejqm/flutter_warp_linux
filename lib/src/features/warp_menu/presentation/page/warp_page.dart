import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_warp_linux/src/themes/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../constants/assets.dart';
import '../../../../../constants/messages.dart';

import '../../../connection_checker/cubit/connectivity_cubit.dart';
import '../../bloc/warp_bloc.dart';
import '../../repository/warp_repository.dart';
import '../view/warp_switch.dart';

class WarpPage extends StatelessWidget {
  const WarpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ConnectivityCubit()),
        BlocProvider(create: (_) => WarpBloc(WarpRepositoryImpl())),
      ],
      child: const WarpView(),
    );
  }
}

class WarpView extends StatelessWidget {
  const WarpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Wrap(
          children: [
            const FaIcon(FontAwesomeIcons.cloudflare),
            const SizedBox(width: 15),
            BlocBuilder<ConnectivityCubit, ConnectivityState>(
              builder: (context, state) => state.maybeWhen(
                connected: () => BlocBuilder<WarpBloc, WarpState>(
                  builder: (context, state) => Text(
                    state.maybeWhen(
                      connected: (ip) => ip,
                      disconnected: (ip) => ip,
                      orElse: () => "ip=unknow",
                    ),
                  ),
                ),
                orElse: () => Container(),
              ),
            ),
          ],
        ),
        actions: const [
          _ThemeSwitcher(),
          SizedBox(width: 10),
        ],
      ),
      body: BlocBuilder<ConnectivityCubit, ConnectivityState>(
        builder: (context, state) {
          return state.when(
            connected: () => const WarpSwitch(),
            disconnected: () => const _OfflineView(),
            connecting: () => const _ConnectingView(),
          );
        },
      ),
    );
  }
}

class _ThemeSwitcher extends StatelessWidget {
  const _ThemeSwitcher({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return DayNightSwitcher(
    //   isDarkModeEnabled:
    //       EasyDynamicTheme.of(context).themeMode == ThemeMode.dark,
    //   sunColor: AppColors.primaryColor,
    //   onStateChanged: (_) => EasyDynamicTheme.of(context).changeTheme(),
    // );
    // return FlutterSwitch(
    //   value: EasyDynamicTheme.of(context).themeMode == ThemeMode.dark,
    //   onToggle: (_) => EasyDynamicTheme.of(context).changeTheme(),
    // );
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const FaIcon(FontAwesomeIcons.moon),
        EasyDynamicThemeSwitch(),
      ],
    );
  }
}

class _OfflineView extends StatelessWidget {
  const _OfflineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          Assets.assetsSvgNoInternet,
          width: 250,
          height: 250,
        ),
        const SizedBox(height: 20),
        Text(
          Message.noInternetConnection,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}

class _ConnectingView extends StatelessWidget {
  const _ConnectingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: Theme.of(context).primaryColor),
    );
  }
}
