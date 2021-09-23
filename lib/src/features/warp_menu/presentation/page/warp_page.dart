import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_warp_linux/src/assets/app_messages.dart';
import 'package:flutter_warp_linux/src/assets/app_svg.dart';

import '../../../connection_checker/cubit/connection_cubit.dart';
import '../../../connection_checker/cubit/connection_state.dart';
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

class _OfflineView extends StatelessWidget {
  const _OfflineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AppSvg.noConnection,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 20),
        Text(
          AppMessages.noInternetConnection,
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
