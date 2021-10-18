import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/messages.dart';
import '../../../constants/themes.dart';
import '../connection_checker_cubit/connectivity_cubit.dart';
import '../warp_cubit/warp_cubit.dart';

class IPLabel extends StatelessWidget {
  const IPLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityCubit, ConnectivityState>(
      builder: (context, state) {
        return state.maybeWhen(
          connected: () => const _IPLabelView(),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}

class _IPLabelView extends StatelessWidget {
  const _IPLabelView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WarpCubit, WarpState>(
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
    );
  }
}
