import 'dart:async';

import 'package:flutter/services.dart';

class SearchableSlideableList {
  static const MethodChannel _channel =
      const MethodChannel('searchable_slideable_list');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
