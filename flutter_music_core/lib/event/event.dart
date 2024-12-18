/*
 * @Author: jadehh
 * @Date: 2024-08-19 11:18:16
 * @LastEditTime: 2024-08-19 17:28:04
 * @LastEditors: jadehh
 * @Description: 
 * @FilePath: \drama_source\drama_source_core\lib\src\event\event.dart
 * 
 */

import 'dart:async';

import 'package:flutter_log/flutter_log.dart';

/// 全局事件
class EventBus {

  static const sourceDialogEventName = "dialog";

  static const apiDialogEventName = "api";

  static const apiHotSearchEventName = "apiHotSearchEvent";

  static EventBus? _instance;

  static EventBus get instance {
    _instance ??= EventBus();
    return _instance!;
  }

  final Map<String, StreamController> _streams = {};

  /// 触发事件
  void emit<T>(String name, T data) {
    if (!_streams.containsKey(name)) {
      _streams.addAll({name: StreamController.broadcast()});
    }
    Log.d("Emit Event：$name\r\n$data.toString()");
    _streams[name]!.add(data);
  }

  /// 监听事件
  StreamSubscription<dynamic> listen(String name, Function(dynamic)? onData) {
    if (!_streams.containsKey(name)) {
      _streams.addAll({name: StreamController.broadcast()});
    }
    return _streams[name]!.stream.listen(onData);
  }
}

class SourceEvent{
  final String name;
  final String errorMessage;
  SourceEvent({required this.name,required this.errorMessage});
}



