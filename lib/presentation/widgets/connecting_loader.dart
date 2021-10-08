import 'package:flutter/material.dart';

import '../../business_logic/warp_bloc/warp_bloc.dart';

class ConnectingLoader extends StatelessWidget {
  const ConnectingLoader({
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
