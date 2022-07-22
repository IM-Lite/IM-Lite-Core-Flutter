import 'dart:io';

class BaseWebSocket {
  final Function() onConnecting;
  final Function() onSuccess;
  final Function(dynamic data) onData;
  final Function(dynamic error) onError;
  final Function() onClose;

  BaseWebSocket({
    required this.onConnecting,
    required this.onSuccess,
    required this.onData,
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
          onError: (error) {
            onError(error);
          },
          onDone: () async {
            await disconnect();
            onClose();
          },
          cancelOnError: true,
        );
      onSuccess();
    } catch (_) {
      await disconnect();
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

  void sendData(dynamic data) {
    try {
      _webSocket?.add(data);
    } catch (_) {}
  }
}
