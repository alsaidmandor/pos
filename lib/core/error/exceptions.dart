class PrimaryServerException implements Exception {
  final String error;
  final List message;
  final int code;

  PrimaryServerException({
    required this.error,
    required this.code,
    required this.message,
});
}

class CacheException implements Exception {
  final dynamic error;

  CacheException(this.error);
}