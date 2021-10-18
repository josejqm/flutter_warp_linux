import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../warp_cubit/warp_cubit.dart';

class ConnectionSwitcher extends StatelessWidget {
  const ConnectionSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WarpCubit, WarpState>(
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
          onToggle: (_) => context.read<WarpCubit>().toogleConnection(),
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
