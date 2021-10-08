import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../business_logic/connection_checker_cubit/connectivity_cubit.dart';
import '../../business_logic/warp_bloc/warp_bloc.dart';
import '../../data/repositories/repositories_impl/warp_repository.dart';

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

