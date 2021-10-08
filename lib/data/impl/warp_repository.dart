

import 'package:process_run/shell.dart';

import '../../domain/exceptions/warp_exception.dart';
import '../../domain/models/warp_status.dart';
import '../repositories/warp_repository.dart';

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
  Future<WarpStatus> getWarpStatus() async {
    final response = await _shell.run(_vpnCheck).timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        throw const WarpException(WarpError.timeout);
      },
    );
    final isConnected = response.outText.contains('warp=on');
    final ip = response.outLines.firstWhere((l) => l.startsWith("ip"));
    return WarpStatus(ip: ip, isConnected: isConnected);
  }

  // @override
  // Future<bool> isConnected() async {
  //   final response = await _shell.run(_vpnCheck).timeout(
  //     const Duration(seconds: 10),
  //     onTimeout: () {
  //       throw const SocketException("Error timeout");
  //     },
  //   );
  //   return response.outText.contains('warp=on');
  // }

  // @override
  // Future<String> getIp() async {
  //   final response = await _shell.run(_vpnCheck);
  //   final ip =
  //       response.outLines.firstWhere((element) => element.startsWith("ip"));
  //   return ip;
  // }
}
