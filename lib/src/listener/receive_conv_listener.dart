import 'package:im_lite_core_flutter/src/proto/lite.pb.dart';

/// 接收会话监听
class ReceiveConvListener {
  final Function(ConvDataList? convList)? onPullConv; // 拉取会话

  ReceiveConvListener({
    this.onPullConv,
  });

  void pullConv(ConvDataList? convList) {
    if (onPullConv != null) onPullConv!(convList);
  }
}
