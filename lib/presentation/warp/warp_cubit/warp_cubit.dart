import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import '../../../data/models/warp_status.dart';
import '../../../data/repositories/warp_repository_impl.dart';
import '../../../domain/exceptions/warp_exception.dart';

part 'warp_cubit.freezed.dart';
part 'warp_state.dart';

class WarpCubit extends Cubit<WarpState> {
  WarpCubit(this.warpRepository) : super(const WarpState.checking());

  final WarpRepositoryImpl warpRepository;

  Future<WarpStatus?> _getConnectionStatus() async {
    try {
      return await warpRepository.getWarpStatus();
    } on WarpException catch (e) {
      if (e.error == WarpError.timeout) {
        emit(const WarpState.failed("Timeout"));
      }
    }
  }

  Future<void> checkConnection() async {
    emit(const WarpState.checking());
    final status = await _getConnectionStatus();
    if (status != null) {
      if (status.isConnected) {
        emit(WarpState.connected(status.ip));
      } else {
        emit(WarpState.disconnected(status.ip));
      }
    }
  }

  Future<void> _connect() async {
    emit(const WarpState.connecting());
    await warpRepository.connect();
    await Future.delayed(const Duration(seconds: 2));
    final status = await _getConnectionStatus();
    if (status == null) {
      emit(const WarpState.disconnected("Unknow"));
    } else {
      emit(WarpState.connected(status.ip));
    }
  }

  Future<void> _disconnect() async {
    emit(const WarpState.disconnecting());
    await warpRepository.disconnect();
    await Future.delayed(const Duration(seconds: 2));
    final status = await _getConnectionStatus();
    if (status == null) {
      emit(const WarpState.disconnected("Unknow"));
    } else {
      emit(WarpState.disconnected(status.ip));
    }
  }

  void toogleConnection() => state.maybeWhen(
        connected: (_) => _disconnect(),
        disconnected: (_) => _connect(),
        orElse: () {},
      );
}
