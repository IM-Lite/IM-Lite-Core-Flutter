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

  Future connect({
    required String url,
  }) async {
    throw "To use sockets you need dart:io or dart:html";
  }

  Future disconnect() {
    throw "To use sockets you need dart:io or dart:html";
  }

  bool isConnect() {
    throw "To use sockets you need dart:io or dart:html";
  }

  void sendData(dynamic data) {
    throw "To use sockets you need dart:io or dart:html";
  }
}
