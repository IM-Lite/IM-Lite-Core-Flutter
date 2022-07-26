import 'dart:io';

class BaseWebSocket {
  final Function(dynamic data) onData;
  final Function() onConnecting;
  final Function() onSuccess;
  final Function(dynamic error) onError;
  final Function() onClose;

  BaseWebSocket({
    required this.onData,
    required this.onConnecting,
    required this.onSuccess,
    required this.onError,
    required this.onClose,
  });

  WebSocket? _webSocket;

  Future connect({
    required String url,
  }) async {
    try {
      onConnecting();
      _webSocket = await WebSocket.connect(url)
        ..listen(
          onData,
          onError: onError,
          onDone: onClose,
          cancelOnError: true,
        );
      onSuccess();
    } catch (_) {
      onClose();
    }
  }

  Future disconnect() async {
    await _webSocket?.close();
    _webSocket = null;
  }

  bool isConnect() {
    return _webSocket != null;
  }
}
