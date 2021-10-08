import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_state.freezed.dart';

@freezed
abstract class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.connected() = _Online;

  const factory ConnectivityState.connecting() = _Connecting;

  const factory ConnectivityState.disconnected() = _Offline;
}
