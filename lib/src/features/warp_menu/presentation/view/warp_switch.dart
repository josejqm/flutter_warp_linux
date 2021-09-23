import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_warp_linux/src/assets/app_messages.dart';
import 'package:flutter_warp_linux/src/assets/app_svg.dart';
import '../../bloc/warp_bloc.dart';

class WarpSwitch extends StatelessWidget {
  const WarpSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AppSvg.cloudfareLogoBig,
          height: 100,
          width: 100,
        ),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: const [
            _ConnectingLoader(),
            _ConnectionLabel(),
          ],
        ),
        const SizedBox(height: 20),
        const _ConnectionSwitcher()
      ],
    );
  }
}

class _ConnectingLoader extends StatelessWidget {
  const _ConnectingLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WarpBloc, WarpState>(
      builder: (context, state) => state.maybeWhen(
        connecting: () => const CircularProgressIndicator(),
        disconnecting: () => const CircularProgressIndicator(),
        orElse: () => Container(),
      ),
    );
  }
}

class _ConnectionLabel extends StatelessWidget {
  const _ConnectionLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WarpBloc, WarpState>(
      builder: (context, state) => Text(
        state.when(
          connected: () => AppMessages.connected,
          connecting: () => AppMessages.connecting,
          disconnected: () => AppMessages.disconnected,
          disconnecting: () => AppMessages.disconnecting,
        ),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}

class _ConnectionSwitcher extends StatelessWidget {
  const _ConnectionSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WarpBloc, WarpState>(
      builder: (context, state) {
        return FlutterSwitch(
          height: 75,
          width: 100,
          toggleSize: 50,
          activeColor: Theme.of(context).primaryColor,
          onToggle: (_) =>
              BlocProvider.of<WarpBloc>(context).toogleConnection(),
          value: state is WarpStateConnected,
        );
      },
    );
  }
}
