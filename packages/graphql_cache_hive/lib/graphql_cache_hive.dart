import 'dart:async';

import 'package:flutter/services.dart';

class GraphqlCacheHive {
  static const MethodChannel _channel =
      const MethodChannel('graphql_cache_hive');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
