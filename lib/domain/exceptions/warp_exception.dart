enum WarpError { timeout }

class WarpException implements Exception {
  const WarpException(this.error);
  final WarpError error;
}
