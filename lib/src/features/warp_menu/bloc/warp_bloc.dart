import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/warp_repository.dart';
import 'warp_event.dart';
import 'warp_state.dart';

export 'warp_event.dart';
export 'warp_state.dart';

class WarpBloc extends Bloc<WarpEvent, WarpState> {
  WarpBloc(this.warpRepository) : super(WarpState.disconnected("Unknow")) {
    on<WarpEvent>(
      (event, emit) async => event.when(
        connect: () => _onConnect(emit),
        disconnect: () => _onDisconnect(emit),
      ),
    );
    _checkWarpConnection();
  }
  final WarpRepositoryImpl warpRepository;

  Future<void> _checkWarpConnection() async {
    final ip = await warpRepository.getIp();

    if (await warpRepository.isConnected()) {
      emit(WarpState.connected(ip));
    } else {
      emit(WarpState.disconnected(ip));
    }
  }

  Future<void> _onConnect(Emitter<WarpState> emit) async {
    emit(const WarpState.connecting());
    try {
      await warpRepository.connect();
      await Future.delayed(const Duration(seconds: 2));
      final ip = await warpRepository.getIp();
      emit(WarpState.connected(ip));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onDisconnect(Emitter<WarpState> emit) async {
    emit(const WarpState.disconnecting());
    try {
      await warpRepository.disconnect();
      await Future.delayed(const Duration(seconds: 2));
      final ip = await warpRepository.getIp();
      emit(WarpState.disconnected(ip));
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void toogleConnection() => state.maybeWhen(
        connected: (_) => add(const WarpEvent.disconnect()),
        disconnected: (_) => add(const WarpEvent.connect()),
        orElse: () {},
      );
}
