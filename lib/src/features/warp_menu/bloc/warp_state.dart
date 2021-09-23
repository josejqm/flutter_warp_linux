import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warp_state.freezed.dart';

@freezed
abstract class WarpState with _$WarpState {
  const factory WarpState.connected() = WarpStateConnected;
  const factory WarpState.connecting() = WarpStateConnecting;
  const factory WarpState.disconnected() = WarpStateDisconnected;
  const factory WarpState.disconnecting() = WarpStateDisconnecting;
}
