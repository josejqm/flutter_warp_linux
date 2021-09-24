import 'package:flutter_warp_linux/src/features/warp_menu/repository/warp_status.dart';

abstract class WarpRepository {
  Future<void> connect();
  Future<void> disconnect();
  Future<WarpStatus> getWarpStatus();
  // Future<bool> isConnected();
  // Future<String> getIp();

}
