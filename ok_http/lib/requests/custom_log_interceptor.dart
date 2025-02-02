/*
 * @Author: jadehh
 * @Date: 2024-08-19 15:59:23
 * @LastEditTime: 2024-08-20 19:05:54
 * @LastEditors: jadehh
 * @Description: 
 * @FilePath: \drama_source\drama_source_core\lib\src\requests\custom_log_interceptor.dart
 * 
 */

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_log/flutter_log.dart';

class CustomLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra["ts"] = DateTime.now().millisecondsSinceEpoch;

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    var time =
        DateTime.now().millisecondsSinceEpoch - err.requestOptions.extra["ts"];
    if (!kReleaseMode) {
      Log.e('''【HTTP请求错误-${err.type}】 耗时:${time}ms${err.message}
Request Method：${err.requestOptions.method}
Response Code：${err.response?.statusCode}
Request URL：${err.requestOptions.uri}
Request Query：${err.requestOptions.queryParameters}
Request Data：${err.requestOptions.data}
Request Headers：${err.requestOptions.headers}
Response Headers：${err.response?.headers.map}
Response Data：${err.response?.data}''', err.stackTrace);
    } else {
      Log.e('''[HTTP Error] [${err.type}] [Time:${time}ms]
${err.message}

Request Method：${err.requestOptions.method}
Response Code：${err.response?.statusCode}
Request URL：${err.requestOptions.uri}
Request Query：${err.requestOptions.queryParameters}
Request Data：${err.requestOptions.data}
Request Headers：${_maskHeader(err.requestOptions.headers)}
Response Headers：${err.response?.headers.map}
Response Data：${err.response?.data}''', err.stackTrace);
    }

    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    var time = DateTime.now().millisecondsSinceEpoch -
        response.requestOptions.extra["ts"];
    if (!kReleaseMode) {
      Log.d(
        "[HTTP Response] [time:${time}ms] [${response.statusCode}] ${response.requestOptions.uri}",
      );
//       Log.d(
//         '''【HTTP请求响应】 耗时:${time}ms
// Request Method：${response.requestOptions.method}
// Request Code：${response.statusCode}
// Request URL：${response.requestOptions.uri}
// Request Query：${response.requestOptions.queryParameters}
// Request Data：${response.requestOptions.data}
// Request Headers：${response.requestOptions.headers}
// Response Headers：${response.headers.map}
// Response Data：${response.data}''',
//       );
    } else {
      Log.d(
        "[HTTP Response] [time:${time}ms] [${response.statusCode}] ${response.requestOptions.uri}",
      );
    }
    super.onResponse(response, handler);
  }

  // Header脱敏
  String _maskHeader(Map<String, dynamic> header) {
    var result = <String, dynamic>{};
    header.forEach((key, value) {
      var k = key.toLowerCase();
      if (k == "cookie" || k == "authorization") {
        result[key] = "******";
      } else {
        result[key] = value;
      }
    });
    return result.toString();
  }
}
