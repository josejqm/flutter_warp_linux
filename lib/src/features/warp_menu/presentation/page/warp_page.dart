import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants/assets.dart';
import '../../../../../constants/messages.dart';
import '../../../../../constants/themes.dart';
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
        title: const _IPLabel(),
        actions: [
          Center(
            child: Text(
              'Dark Theme',
              style:
                  Theme.of(context).textTheme.headline6!.copyWith(fontSize: 17),
            ),
          ),
          EasyDynamicThemeAutoSwitch(),
          const SizedBox(width: 10),
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

class _IPLabel extends StatelessWidget {
  const _IPLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityCubit, ConnectivityState>(
      builder: (context, state) {
        return state.maybeWhen(
          connected: () => BlocBuilder<WarpBloc, WarpState>(
            builder: (context, state) {
              late Color color;
              late String ip;

              state.maybeWhen(
                connected: (_ip) {
                  color = AppColors.primaryColor;
                  ip = _ip;
                },
                disconnected: (_ip) {
                  ip = _ip;
                  color = Theme.of(context).textTheme.bodyText1!.color!;
                },
                orElse: () {
                  ip = Messages.ipUnknow;
                  color = Theme.of(context).textTheme.bodyText1!.color!;
                },
              );

              return Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.cloudflare, color: color),
                  const SizedBox(width: 15),
                  Text(
                    ip,
                    style: TextStyle(
                      color: color,
                      fontSize: 17,
                    ),
                  ),
                ],
              );
            },
          ),
          orElse: () => Container(),
        );
      },
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
          Messages.noInternetConnection,
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
