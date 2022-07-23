import 'dart:async';
import 'package:im_lite_core_flutter/src/connect/lite_http.dart';
import 'package:im_lite_core_flutter/src/connect/lite_socket.dart';
import 'package:im_lite_core_flutter/src/listener/connect_listener.dart';
import 'package:im_lite_core_flutter/src/listener/receive_conv_listener.dart';
import 'package:im_lite_core_flutter/src/listener/receive_msg_listener.dart';
import 'package:im_lite_core_flutter/src/proto/lite.pb.dart';

class IMLiteCore {
  factory IMLiteCore() => _getInstance();

  static IMLiteCore get instance => _getInstance();
  static IMLiteCore? _instance;

  static IMLiteCore _getInstance() {
    return _instance ??= IMLiteCore._internal();
  }

  IMLiteCore._internal();

  LiteHttp? _liteHttp;
  LiteSocket? _liteSocket;

  /// 初始化
  void init({
    required String apiUrl,
    required String wsUrl,
    ConnectListener? connectListener,
    ReceiveMsgListener? receiveMsgListener,
    ReceiveConvListener? receiveConvListener,
  }) {
    _liteHttp = LiteHttp(
      apiUrl: apiUrl,
      receiveConvListener: receiveConvListener,
      receiveMsgListener: receiveMsgListener,
    );
    _liteSocket = LiteSocket(
      liteHttp: _liteHttp!,
      wsUrl: wsUrl,
      connectListener: connectListener,
      receiveMsgListener: receiveMsgListener,
    );
  }

  /// 登录
  Future login({
    required String token,
    required String userID,
  }) async {
    _liteHttp?.connect(token: token);
    await _liteSocket?.connect(
      token: token,
      userID: userID,
    );
  }

  /// 登出
  Future logout() async {
    _liteHttp?.disconnect();
    await _liteSocket?.disconnect();
  }

  /// 是否登录
  bool isLogin() {
    bool http = _liteHttp?.isConnect() ?? false;
    bool socket = _liteSocket?.isConnect() ?? false;
    return http && socket;
  }

  /// 拉取会话
  void pullConvList() {
    _liteHttp?.pullConvList();
  }

  /// 拉取消息
  void pullMsgList({
    required PullMsgList pullList,
  }) {
    _liteHttp?.pullMsgList(
      pullList: pullList,
    );
  }

  /// 发送消息
  void sendMsg({
    required MsgData msg,
    Function(dynamic data)? onSuccess,
    Function(String? error)? onError,
  }) {
    _liteHttp?.sendMsg(
      msg: msg,
      onSuccess: onSuccess,
      onError: onError,
    );
  }

  /// 发送请求
  void request({
    required String path,
    required String method,
    Map<String, dynamic>? query,
    dynamic data,
    Function(dynamic data)? onSuccess,
    Function(String? error)? onError,
  }) {
    _liteHttp?.request(
      path: path,
      method: method,
      query: query,
      data: data,
      onSuccess: onSuccess,
      onError: onError,
    );
  }
}
