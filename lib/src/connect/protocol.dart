import 'dart:io';

class Protocol {
  static const String pullConvList = "/im/v1/conversation/list"; // 拉取会话列表
  static const String pullMsgList = "/im/v1/message/pull/batch"; // 拉取消息列表
  static const String sendMsg = "/im/v1/message/send"; // 发送消息

  /// 获取当前平台
  static String getPlatform() {
    if (Platform.isIOS) {
      return "IOS";
    } else if (Platform.isAndroid) {
      return "Android";
    } else if (Platform.isWindows) {
      return "Windows";
    } else if (Platform.isMacOS) {
      return "OSX";
    } else if (Platform.isLinux) {
      return "Linux";
    }
    return "";
  }
}
