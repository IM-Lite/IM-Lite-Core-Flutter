import 'dart:async';
import 'package:dio/dio.dart';
import 'package:im_lite_core_flutter/src/connect/protocol.dart';
import 'package:im_lite_core_flutter/src/listener/receive_conv_listener.dart';
import 'package:im_lite_core_flutter/src/proto/lite.pb.dart';

class LiteHttp {
  final String apiUrl;
  final Duration autoPullTime;
  final ReceiveConvListener? receiveConvListener;

  LiteHttp({
    required this.apiUrl,
    required this.autoPullTime,
    this.receiveConvListener,
  });

  Dio? _dio;
  Timer? _timer;

  void connect({
    required String token,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: apiUrl,
        headers: {
          "token": token,
        },
        responseType: ResponseType.bytes,
      ),
    );
    pullConvList();
    _timer = Timer.periodic(
      autoPullTime,
      (timer) {
        pullConvList();
      },
    );
  }

  void disconnect() {
    _timer?.cancel();
    _timer = null;
    _dio?.close(force: true);
    _dio = null;
  }

  bool isConnect() {
    return _dio != null;
  }

  void pullConvList() async {
    request(
      path: Protocol.pullConvList,
      method: "post",
      onSuccess: (data) {
        ConvDataList convList = ConvDataList.fromBuffer(data);
        receiveConvListener?.pullConv(convList);
      },
      onError: (error) {
        receiveConvListener?.pullConv(null);
      },
    );
  }

  void pullMsgList({
    required PullMsgList pullList,
    Function(MsgDataList msgList)? onSuccess,
    Function(String? error)? onError,
  }) async {
    List<int> bytes = pullList.writeToBuffer();
    request(
      path: Protocol.pullMsgList,
      method: "post",
      data: Stream.fromIterable(
        bytes.map((e) => [e]),
      ),
      onSuccess: (data) {
        MsgDataList msgList = MsgDataList.fromBuffer(data);
        if (onSuccess != null) onSuccess(msgList);
      },
      onError: (error) {
        if (onError != null) onError(error);
      },
    );
  }

  void sendMsg({
    required MsgData msg,
    Function(dynamic data)? onSuccess,
    Function(String? error)? onError,
  }) async {
    List<int> bytes = msg.writeToBuffer();
    request(
      path: Protocol.sendMsg,
      method: "post",
      data: Stream.fromIterable(
        bytes.map((e) => [e]),
      ),
      onSuccess: (data) {
        if (onSuccess != null) onSuccess(data);
      },
      onError: (error) {
        if (onError != null) onError(error);
      },
    );
  }

  void request({
    required String path,
    required String method,
    Map<String, dynamic>? query,
    dynamic data,
    Function(dynamic data)? onSuccess,
    Function(String? error)? onError,
  }) async {
    if (!isConnect()) return;
    Response? response;
    try {
      response = await _dio?.request(
        path,
        options: Options(
          method: method,
        ),
        queryParameters: query,
        data: data,
      );
      if (response != null) {
        if (response.statusCode == 200) {
          if (onSuccess != null) onSuccess(response.data);
        } else {
          if (onError != null) onError(response.statusMessage);
        }
      } else {
        if (onError != null) onError(null);
      }
    } catch (e) {
      if (onError != null) onError(null);
    }
  }
}
