class ServerException implements Exception {
  final String message;

  ServerException(this.message);
}

class ClientException implements Exception {
  final String message;

  ClientException(this.message);
}

class ConnectionException implements Exception {
  final String message;

  ConnectionException(this.message);
}

class CacheException implements Exception {
  final String message;

  CacheException(this.message);
}
