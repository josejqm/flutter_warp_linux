import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../connection_checker_cubit/connectivity_cubit.dart';

import '../widgets/ip_label.dart';
import 'connecting_view.dart';
import 'offline_view.dart';
import 'warp_switch.dart';

class WarpView extends StatelessWidget {
  const WarpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const IPLabel(),
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
            disconnected: () => const OfflineView(),
            connecting: () => const ConnectingView(),
          );
        },
      ),
    );
  }
}
