import 'warp_status.dart';

abstract class WarpRepository {
  Future<void> connect();
  Future<void> disconnect();
  Future<WarpStatus> getWarpStatus();
  // Future<bool> isConnected();
  // Future<String> getIp();

}
