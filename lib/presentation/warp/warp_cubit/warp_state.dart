part of 'warp_cubit.dart';

@freezed
class WarpState with _$WarpState {
  const factory WarpState.checking() = WarpStateChecking;

  const factory WarpState.connected(String ip) = WarpStateConnected;

  const factory WarpState.connecting() = WarpStateConnecting;

  const factory WarpState.disconnected(String ip) = WarpStateDisconnected;

  const factory WarpState.disconnecting() = WarpStateDisconnecting;

  const factory WarpState.failed(String errorMessage) = WarpStateFailed;
}
