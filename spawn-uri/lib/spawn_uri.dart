
import 'dart:async';

import 'package:flutter/services.dart';

class SpawnUri {
  static const MethodChannel _channel = MethodChannel('spawn_uri');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}