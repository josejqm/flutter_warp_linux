abstract class WarpRepository {
  Future<void> connect();
  Future<void> disconnect();
  Future<bool> isConnected();
}
