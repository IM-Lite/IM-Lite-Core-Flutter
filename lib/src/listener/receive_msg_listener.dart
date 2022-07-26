import 'package:im_lite_core_flutter/src/proto/lite.pb.dart';

/// 接收消息监听
class ReceiveMsgListener {
  final Function(MsgData msg)? onPushMsg; // 推送消息

  ReceiveMsgListener({
    this.onPushMsg,
  });

  void pushMsg(MsgData msg) {
    if (onPushMsg != null) onPushMsg!(msg);
  }
}
