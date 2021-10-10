import 'dart:io';

import 'package:process_run/utils/process_result_extension.dart';

class WarpStatus {
  WarpStatus({
    required this.ip,
    required this.isConnected,
  });
  String ip;
  bool isConnected;

  factory WarpStatus.fromResponse(List<ProcessResult> response) {
    final isConnected = response.outText.contains('warp=on');
    final ip = response.outLines.firstWhere((l) => l.startsWith("ip"));
    return WarpStatus(ip: ip, isConnected: isConnected);
  }
}
