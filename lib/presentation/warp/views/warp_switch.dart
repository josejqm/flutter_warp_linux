import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/assets.dart';

import '../widgets/connecting_loader.dart';
import '../widgets/connection_label.dart';
import '../widgets/connection_switcher.dart';

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
            ConnectingLoader(),
            SizedBox(width: 15.0),
            ConnectionLabel(),
          ],
        ),
        const SizedBox(height: 20),
        const ConnectionSwitcher()
      ],
    );
  }
}
