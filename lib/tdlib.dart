library tdlib;

import 'package:flutter/services.dart';

export 'package:tdlib/src/tdclient/td_client.dart';

class TdLib {
  static const MethodChannel _channel = MethodChannel('tdlib');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
