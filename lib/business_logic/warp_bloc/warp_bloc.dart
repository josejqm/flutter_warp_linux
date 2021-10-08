import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/warp_repository.dart';
import 'warp_event.dart';
import 'warp_state.dart';

export 'warp_event.dart';
export 'warp_state.dart';

class WarpBloc extends Bloc<WarpEvent, WarpState> {
  WarpBloc(this.warpRepository) : super(WarpState.disconnected("Unknow")) {
    on<WarpEvent>((event, emit) async {
      await event.when(
        connect: () => _onConnect(emit),
        disconnect: () => _onDisconnect(emit),
      );
    });
    _checkWarpConnection();
  }
  final WarpRepositoryImpl warpRepository;

  Future<void> _checkWarpConnection() async {
    emit(const WarpState.checking());
    final status = await warpRepository.getWarpStatus();
    // emit(WarpState.failed("Error while checking"));
    if (status.isConnected) {
      emit(WarpState.connected(status.ip));
    } else {
      emit(WarpState.disconnected(status.ip));
    }
  }

  Future<void> _onConnect(Emitter<WarpState> emit) async {
    emit(const WarpState.connecting());
    try {
      await warpRepository.connect();
      await Future.delayed(const Duration(seconds: 2));
      final status = await warpRepository.getWarpStatus();
      if (status.isConnected) {
        emit(WarpState.connected(status.ip));
      }
    } on SocketException catch (e) {
      emit(WarpState.failed(e.message));
    }
  }

  Future<void> _onDisconnect(Emitter<WarpState> emit) async {
    emit(const WarpState.disconnecting());
    try {
      await warpRepository.disconnect();
      await Future.delayed(const Duration(seconds: 2));
      final status = await warpRepository.getWarpStatus();
      if (!status.isConnected) {
        emit(WarpState.disconnected(status.ip));
      }
    } on SocketException catch (e) {
      emit(WarpState.failed(e.message));
    }
  }

  void toogleConnection() => state.maybeWhen(
        connected: (_) => add(const WarpEvent.disconnect()),
        disconnected: (_) => add(const WarpEvent.connect()),
        failed: (_) => add(const WarpEvent.connect()),
        orElse: () {},
      );
}
