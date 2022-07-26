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
    dynamic data = await request(
      path: Protocol.pullConvList,
      method: "post",
    );
    if (data != null) {
      ConvDataList convList = ConvDataList.fromBuffer(data);
      receiveConvListener?.pullConv(convList);
    } else {
      receiveConvListener?.pullConv(null);
    }
  }

  Future<MsgDataList?> pullMsgList({
    required PullMsgList pullList,
  }) async {
    List<int> bytes = pullList.writeToBuffer();
    dynamic data = await request(
      path: Protocol.pullMsgList,
      method: "post",
      data: Stream.fromIterable(
        bytes.map((e) => [e]),
      ),
    );
    if (data != null) {
      return MsgDataList.fromBuffer(data);
    }
    return null;
  }

  Future<bool> sendMsg({
    required MsgData msg,
  }) async {
    List<int> bytes = msg.writeToBuffer();
    dynamic data = await request(
      path: Protocol.sendMsg,
      method: "post",
      data: Stream.fromIterable(
        bytes.map((e) => [e]),
      ),
    );
    return data != null;
  }

  Future<dynamic> request({
    required String path,
    required String method,
    Map<String, dynamic>? query,
    dynamic data,
  }) async {
    if (!isConnect()) return null;
    try {
      Response? response = await _dio?.request(
        path,
        options: Options(
          method: method,
        ),
        queryParameters: query,
        data: data,
      );
      if (response != null && response.statusCode == 200) {
        return response.data;
      }
    } catch (_) {}
    return null;
  }
}
