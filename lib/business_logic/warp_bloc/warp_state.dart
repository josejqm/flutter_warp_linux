import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warp_state.freezed.dart';

@freezed
abstract class WarpState with _$WarpState {
  factory WarpState.connected(String ip) = WarpStateConnected;
  factory WarpState.disconnected(String ip) = WarpStateDisconnected;
  factory WarpState.failed(String errorMessage) = WarpStateFailed;

  const factory WarpState.connecting() = WarpStateConnecting;
  const factory WarpState.disconnecting() = WarpStateDisconnecting;
  const factory WarpState.checking() = WarpStateChecking;
}
