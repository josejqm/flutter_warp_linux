import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'connectivity_cubit.freezed.dart';
part 'connectivity_state.dart';


class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit() : super(const ConnectivityState.disconnected()) {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_checkConnection);
  }

  final InternetConnectionChecker _connectionChecker =
      InternetConnectionChecker();

  final _connectivity = Connectivity();
  late StreamSubscription _connectivitySubscription;

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }

  Future<void> _checkConnection(ConnectivityResult connectivityResult) async {
    emit(const ConnectivityState.checking());
    if (connectivityResult == ConnectivityResult.none) {
      emit(const ConnectivityState.disconnected());
    } else {
      if (await _connectionChecker.hasConnection) {
        emit(const ConnectivityState.connected());
      } else {
        emit(const ConnectivityState.disconnected());
      }
    }
  }
}
