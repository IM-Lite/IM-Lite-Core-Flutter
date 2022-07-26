// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

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
      _webSocket = WebSocket(url)
        ..onOpen.listen(
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
    _webSocket?.close();
    _webSocket = null;
  }

  bool isConnect() {
    return _webSocket != null;
  }
}
