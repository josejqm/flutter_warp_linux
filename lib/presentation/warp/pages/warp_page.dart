import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/impl/warp_repository_impl.dart';

import '../connection_checker_cubit/connectivity_cubit.dart';
import '../views/warp_view.dart';
import '../warp_bloc/warp_bloc.dart';

class WarpPage extends StatelessWidget {
  const WarpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ConnectivityCubit()),
        BlocProvider(create: (_) => WarpBloc(WarpRepositoryImpl())),
      ],
      child: const WarpView(),
    );
  }
}
