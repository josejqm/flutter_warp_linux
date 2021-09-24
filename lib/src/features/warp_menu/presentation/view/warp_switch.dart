import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../../../../constants/assets.dart';
import '../../../../../constants/messages.dart';
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
          Assets.assetsSvgCloudflare,
          height: 150,
          width: 150,
        ),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: const [
            _ConnectingLoader(),
            SizedBox(width: 15.0),
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
        checking: () => const CircularProgressIndicator(),
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
          connected: (_) => Messages.connected,
          connecting: () => Messages.connecting,
          disconnected: (_) => Messages.disconnected,
          disconnecting: () => Messages.disconnecting,
          checking: () => Messages.checking,
          failed: (String errorMessage) => Messages.failed,
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
    return BlocConsumer<WarpBloc, WarpState>(
      listener: (context, state) {
        state.maybeWhen(
          failed: (message) => _showError(context, message),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return FlutterSwitch(
          height: 75,
          width: 150,
          toggleSize: 50,
          borderRadius: 30,
          activeColor: Theme.of(context).primaryColor,
          onToggle: (_) =>
              BlocProvider.of<WarpBloc>(context).toogleConnection(),
          value: state is WarpStateConnected,
        );
      },
    );
  }

  void _showError(BuildContext context, String message) {
    final bottomSheet = Scaffold.of(context).showBottomSheet(
      (context) => Container(
        color: Colors.red.withOpacity(0.6),
        width: double.infinity,
        height: 50,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              message,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
      ),
    );
    Future.delayed(const Duration(seconds: 2))
        .then((value) => bottomSheet.close.call());
  }
}
