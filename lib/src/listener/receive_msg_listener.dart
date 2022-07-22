import 'package:im_lite_core_flutter/src/proto/lite.pb.dart';

/// 接收消息监听
class ReceiveMsgListener {
  final Function(MsgDataList? msgList)? onPullMsg; // 拉取消息
  final Function(MsgData msg)? onPushMsg; // 推送消息

  ReceiveMsgListener({
    this.onPullMsg,
    this.onPushMsg,
  });

  void pullMsg(MsgDataList? msgList) {
    if (onPullMsg != null) onPullMsg!(msgList);
  }

  void pushMsg(MsgData msg) {
    if (onPushMsg != null) onPushMsg!(msg);
  }
}
