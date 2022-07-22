import 'package:im_lite_core_flutter/src/connect/protocol.dart';
import 'package:im_lite_core_flutter/src/listener/connect_listener.dart';
import 'package:im_lite_core_flutter/src/listener/receive_conv_listener.dart';
import 'package:im_lite_core_flutter/src/listener/receive_msg_listener.dart';
import 'package:im_lite_core_flutter/src/proto/lite.pb.dart';
import 'src/socket_none.dart'
    if (dart.library.html) 'src/socket_html.dart'
    if (dart.library.io) 'src/socket_io.dart';

class LiteSocket {
  final String wsUrl;
  final ConnectListener? connectListener;
  final ReceiveConvListener? receiveConvListener;
  final ReceiveMsgListener? receiveMsgListener;

  LiteSocket({
    required this.wsUrl,
    this.connectListener,
    this.receiveConvListener,
    this.receiveMsgListener,
  });

  BaseWebSocket? _webSocket;

  Future connect({
    required String token,
    required String userID,
  }) async {
    _webSocket = BaseWebSocket(
      onConnecting: () {
        connectListener?.connecting();
      },
      onSuccess: () {
        connectListener?.success();
      },
      onData: _onData,
      onError: (error) {
        connectListener?.error(error);
      },
      onClose: () {
        connectListener?.close();
      },
    )..connect(
        url: Uri.decodeFull(
          Uri(
            path: wsUrl,
            queryParameters: {
              "token": token,
              "userID": userID,
              "platform": Protocol.getPlatform(),
            },
          ).toString(),
        ),
      );
  }

  Future disconnect() async {
    if (isConnect()) {
      await _webSocket!.disconnect();
      _webSocket = null;
    }
  }

  bool isConnect() {
    return _webSocket?.isConnect() ?? false;
  }

  void _onData(dynamic data) {
    PushBody body = PushBody.fromBuffer(data);
    if (body.event == PushEvent.receiveMsg) {
      MsgData msg = MsgData.fromBuffer(
        body.data,
      );
      receiveMsgListener?.pushMsg(msg);
    } else if (body.event == PushEvent.updateConv) {
      receiveConvListener?.updateConv();
    }
  }
}
