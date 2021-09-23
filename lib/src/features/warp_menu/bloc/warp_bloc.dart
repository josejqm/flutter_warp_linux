import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository/warp_repository.dart';
import 'warp_event.dart';
import 'warp_state.dart';

export 'warp_event.dart';
export 'warp_state.dart';

class WarpBloc extends Bloc<WarpEvent, WarpState> {
  WarpBloc(this.warpRepository) : super(const WarpState.disconnected()) {
    on<WarpEvent>(
      (event, emit) => event.when(
        connect: _mapConnectEvent,
        disconnect: _mapDisconnectEvent,
      ),
    );
    _checkState();
  }

  final WarpRepositoryImpl warpRepository;

  Stream<WarpState> _checkState() async* {
    yield const WarpState.connecting();
    if (await warpRepository.isConnected()) {
      yield const WarpState.connected();
    } else {
      yield const WarpState.disconnected();
    }
  }

  Stream<WarpState> _mapConnectEvent() async* {
    try {
      await warpRepository.connect();
      _checkState();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Stream<WarpState> _mapDisconnectEvent() async* {
    try {
      await warpRepository.disconnect();
      _checkState();
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }

  void toogleConnection() => state.maybeWhen(
        connected: () => add(const WarpEvent.disconnect()),
        disconnected: () => add(const WarpEvent.connect()),
        orElse: () {},
      );
}
