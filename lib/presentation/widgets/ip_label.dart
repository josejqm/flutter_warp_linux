import 'package:flutter/material.dart';

import '../../business_logic/connection_checker_cubit/connectivity_cubit.dart';
import '../../business_logic/connection_checker_cubit/connectivity_state.dart';
import '../../business_logic/warp_bloc/warp_bloc.dart';
import '../../business_logic/warp_bloc/warp_state.dart';
import '../../constants/themes.dart';


class IPLabel extends StatelessWidget {
  const IPLabel({
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
