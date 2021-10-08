import 'package:flutter/material.dart';

import '../../business_logic/warp_bloc/warp_bloc.dart';
import '../../business_logic/warp_bloc/warp_state.dart';
import '../../constants/messages.dart';


class ConnectionLabel extends StatelessWidget {
  const ConnectionLabel({Key? key}) : super(key: key);

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
