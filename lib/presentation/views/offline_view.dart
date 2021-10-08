import 'package:flutter/material.dart';

import '../../constants/messages.dart';

class OfflineView extends StatelessWidget {
  const OfflineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          Assets.assetsSvgNoInternet,
          width: 250,
          height: 250,
        ),
        const SizedBox(height: 20),
        Text(
          Messages.noInternetConnection,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
