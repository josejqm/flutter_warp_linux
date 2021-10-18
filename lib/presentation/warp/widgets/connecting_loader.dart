import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../warp_cubit/warp_cubit.dart';


class ConnectingLoader extends StatelessWidget {
  const ConnectingLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WarpCubit, WarpState>(
      builder: (context, state) => state.maybeWhen(
        connecting: () => const CircularProgressIndicator(),
        disconnecting: () => const CircularProgressIndicator(),
        checking: () => const CircularProgressIndicator(),
        orElse: () => Container(),
      ),
    );
  }
}
