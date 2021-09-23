import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warp_state.freezed.dart';

@freezed
abstract class WarpState with _$WarpState {
  factory WarpState.connected(String ip) = WarpStateConnected;
  const factory WarpState.connecting() = WarpStateConnecting;
  factory WarpState.disconnected(String ip) = WarpStateDisconnected;
  const factory WarpState.disconnecting() = WarpStateDisconnecting;
}
