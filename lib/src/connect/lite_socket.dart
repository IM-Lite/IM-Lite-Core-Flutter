import 'package:im_lite_core_flutter/src/connect/lite_http.dart';
import 'package:im_lite_core_flutter/src/connect/protocol.dart';
import 'package:im_lite_core_flutter/src/listener/connect_listener.dart';
import 'package:im_lite_core_flutter/src/listener/receive_msg_listener.dart';
import 'package:im_lite_core_flutter/src/proto/lite.pb.dart';
import 'src/socket_none.dart'
    if (dart.library.html) 'src/socket_html.dart'
    if (dart.library.io) 'src/socket_io.dart';

class LiteSocket {
  final LiteHttp liteHttp;
  final String wsUrl;
  final ConnectListener? connectListener;
  final ReceiveMsgListener? receiveMsgListener;

  LiteSocket({
    required this.liteHttp,
    required this.wsUrl,
    this.connectListener,
    this.receiveMsgListener,
  });

  BaseWebSocket? _webSocket;

  Future connect({
    required String token,
    required String userID,
  }) async {
    _webSocket = BaseWebSocket(
      onData: _onData,
      onConnecting: () {
        connectListener?.connecting();
      },
      onSuccess: () {
        connectListener?.success();
      },
      onError: (error) {
        connectListener?.error(error);
      },
      onClose: () async {
        liteHttp.disconnect();
        await disconnect();
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
    await _webSocket?.disconnect();
    _webSocket = null;
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
      liteHttp.pullConvList();
    }
  }
}
