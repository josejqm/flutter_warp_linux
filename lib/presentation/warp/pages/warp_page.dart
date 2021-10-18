import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injector.dart';
import '../connection_checker_cubit/connectivity_cubit.dart';
import '../views/warp_view.dart';
import '../warp_cubit/warp_cubit.dart';

class WarpPage extends StatelessWidget {
  const WarpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ConnectivityCubit()),
        BlocProvider(create: (_) => WarpCubit(injector())..checkConnection()),
      ],
      child: const WarpView(),
    );
  }
}
