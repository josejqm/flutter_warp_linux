import 'package:flutter/foundation.dart';
import 'package:process_run/shell.dart';

import 'warp_repository_i.dart';

const _vpnConnect = 'warp-cli connect';
const _vpnDisconnect = 'warp-cli disconnect';
const _vpnCheck = 'curl https://www.cloudflare.com/cdn-cgi/trace/';

class WarpRepositoryImpl extends WarpRepository {
  final Shell _shell = Shell();

  @override
  Future<void> connect() async => _shell.run(_vpnConnect);

  @override
  Future<void> disconnect() async => _shell.run(_vpnDisconnect);

  @override
  Future<bool> isConnected() async {
    final response = await _shell.run(_vpnCheck);
    return response.outText.contains('warp=on');
  }

  @override
  Future<String> getIp() async {
    final response = await _shell.run(_vpnCheck);
    final ip =
        response.outLines.firstWhere((element) => element.startsWith("ip"));
    return ip;
  }
}
