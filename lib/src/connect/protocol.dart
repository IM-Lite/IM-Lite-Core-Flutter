import 'src/platform_none.dart'
    if (dart.library.html) 'src/platform_html.dart'
    if (dart.library.io) 'src/platform_io.dart';

class Protocol {
  static const String pullConvList = "/im/v1/conversation/list"; // 拉取会话列表
  static const String pullMsgList = "/im/v1/message/pull/batch"; // 拉取消息列表
  static const String sendMsg = "/im/v1/message/send"; // 发送消息

  /// 获取当前平台
  static String getPlatform() {
    if (BasePlatform.isIOS) {
      return "IOS";
    } else if (BasePlatform.isAndroid) {
      return "Android";
    } else if (BasePlatform.isWindows) {
      return "Windows";
    } else if (BasePlatform.isMacOS) {
      return "OSX";
    } else if (BasePlatform.isLinux) {
      return "Linux";
    } else if (BasePlatform.isWeb) {
      return "Web";
    }
    return "";
  }
}
