import 'package:process_run/shell.dart';

import '../../domain/exceptions/warp_exception.dart';
import '../../domain/repositories/warp_repository.dart';
import '../models/warp_status.dart';

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
  Future<WarpStatus?> getWarpStatus() async {
    final response = await _shell.run(_vpnCheck).timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        throw const WarpException(WarpError.timeout);
      },
    );

    return WarpStatus.fromResponse(response);
  }
}
