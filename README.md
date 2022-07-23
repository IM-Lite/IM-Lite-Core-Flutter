# IM-Lite-Core-Flutter

[![Pub](https://img.shields.io/pub/v/im_lite_core_flutter.svg?style=flat-square)](https://pub.dev/packages/im_lite_core_flutter)

支持Flutter6端开发。实现最基础的通讯协议，完全可自主控制，可高度定制化IM需求。

## 初始化

     IMLiteCore.instance.init(
       apiUrl: "",
       wsUrl: "",
       connectListener: ConnectListener(
         onConnecting: () {
           // 连接中
         },
         onSuccess: () {
           // 连接成功
         },
         onError: (error) {
           // 发生错误
         },
         onClose: () {
           // 连接关闭
         },
       ),
       receiveConvListener: ReceiveConvListener(
         onPullConv: (convList) {
           if (convList != null) {
             // 拉取会话列表
           } else {
             // 拉取会话错误
           }
         },
       ),
       receiveMsgListener: ReceiveMsgListener(
         onPullMsg: (msgList) {
           if (msgList != null) {
             // 拉取消息列表
           } else {
             // 拉取消息错误
           }
         },
         onPushMsg: (msg) {
           // 推送消息
         },
       ),
     );

## 登录

     IMLiteCore.instance.login(
       token: "",
       userID: "",
     );

## 登出

     IMLiteCore.instance.logout();

## 拉取会话

     IMLiteCore.instance.pullConvList();

## 拉取消息

     PullMsg pull = PullMsg(
       convId: "",
       seqList: [],
     );
     PullMsgList pullList = PullMsgList(
       list: [pull],
     );
     IMLiteCore.instance.pullMsgList(pullList: pullList);

## 发送消息

     MsgData msg = MsgData(
       clientMsgID: "",
       senderID: "",
       convID: "",
       contentType: 1001,
       content: utf8.encode(""),
       clientTime: Int64(1654466766000),
       offlinePush: OfflinePush(
         title: "",
         desc: "",
         ex: "",
         iOSPushSound: "+1",
         iOSBadgeCount: true,
       ),
       msgOptions: MsgOptions(
         storage: true, // 消息是否存储
         unread: true, // 未读是否计数
       ),
     );
     IMLiteCore.instance.sendMsg(msg: msg);
