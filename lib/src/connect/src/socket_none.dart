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

  Future connect({
    required String url,
  }) async {
    throw "To use socket you need dart:io or dart:html";
  }

  Future disconnect() {
    throw "To use socket you need dart:io or dart:html";
  }

  bool isConnect() {
    throw "To use socket you need dart:io or dart:html";
  }
}
