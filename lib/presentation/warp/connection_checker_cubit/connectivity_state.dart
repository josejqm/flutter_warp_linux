part of 'connectivity_cubit.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.connected() = _Online;

  const factory ConnectivityState.checking() = _Checking;

  const factory ConnectivityState.disconnected() = _Offline;
}
