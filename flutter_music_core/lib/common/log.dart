/*
 * @Author: jadehh
 * @Date: 2024-08-20 17:21:27
 * @LastEditTime: 2024-08-20 17:38:31
 * @LastEditors: jadehh
 * @Description: 
 * @FilePath: \drama_source\drama_source_log\lib\src\log.dart
 * 
 */


import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:device_info_plus/device_info_plus.dart';

class Log {
  static LogFileWriter? logFileWriter;
  static void initWriter(String version,String buildNumber) {
    logFileWriter = LogFileWriter( version, buildNumber);
  }

  static void disposeWriter() {
    logFileWriter?.close();
    logFileWriter = null;
  }

  static void writeLog(content, [Level level = Level.info]) {
    logFileWriter
        ?.write("[${level.name.toUpperCase()}] $_currentTime：$content");
  }

  static RxList<DebugLogModel> debugLogs = <DebugLogModel>[].obs;

  static void addDebugLog(String content, Color? color) {
    if (kReleaseMode) {
      return;
    }
    if (content.contains("请求响应")) {
      content = content.split("\n").join('\n💡 ');
    }
    try {
      debugLogs.insert(0, DebugLogModel(DateTime.now(), content, color: color));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  static Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: false,
    ),
  );

  static void d(String message, [bool writeFile = true]) {
    addDebugLog(message, Colors.orange);
    logger.d("${DateTime.now().toString()}\n$message");
    if (writeFile) {
      writeLog(message, Level.debug);
    }
  }

  static void i(String message, [bool writeFile = true]) {
    addDebugLog(message, Colors.blue);
    logger.i("${DateTime.now().toString()}\n$message");
    if (writeFile) {
      logFileWriter?.write("[INFO] $_currentTime：$message");
      writeLog(message, Level.info);
    }
  }

  static void SpiderDebug(String message, [bool writeFile = true]) {
    addDebugLog(message, Colors.blue);
    logger.i("${DateTime.now().toString()}\n SpiderDebug:$message");
    if (writeFile) {
      logFileWriter?.write("[INFO] $_currentTime：SpiderDebug:$message");
      writeLog(message, Level.info);
    }
  }

  static void JSDebug(String message, [bool writeFile = true]) {
    addDebugLog(message, Colors.blue);
    logger.d("${DateTime.now().toString()}\n JSInfo:$message");
    if (writeFile) {
      logFileWriter?.write("[DEBUG] $_currentTime：JSInfo:$message");
      writeLog(message, Level.info);
    }
  }

  static void JSInfo(String message, [bool writeFile = true]) {
    addDebugLog(message, Colors.blue);
    logger.i("${DateTime.now().toString()}\n JSInfo:$message");
    if (writeFile) {
      logFileWriter?.write("[INFO] $_currentTime：JSInfo:$message");
      writeLog(message, Level.info);
    }
  }

  static void e(String message, StackTrace stackTrace, [bool writeFile = true]) {
    addDebugLog('$message\r\n\r\n$stackTrace', Colors.red);
    logger.e("${DateTime.now().toString()}\n$message\n$stackTrace", stackTrace: stackTrace);
    if (writeFile) {
      writeLog("$message\n$stackTrace", Level.error);
    }
  }

  static void w(String message, [bool writeFile = true]) {
    addDebugLog(message, Colors.pink);
    logger.w("${DateTime.now().toString()}\n$message");
    if (writeFile) {
      writeLog(message, Level.warning);
    }
  }

  static void logPrint(dynamic obj, [bool writeFile = true]) {
    addDebugLog(obj.toString(), Colors.red);
    if (writeFile) {
      writeLog(obj, Level.info);
    }
    //logger.e(obj.toString(), obj, obj?.stackTrace);
    if (kDebugMode) {
      print(obj);
    }
  }
static DateFormat timeFormat = DateFormat("HH:mm:ss");
  static String get _currentTime => timeFormat.format(DateTime.now());
}

class LogFileWriter {
  late String fileName;
  LogFileWriter(String version,String buildNumber) {
    var dt = DateFormat("yyyy-MM-dd HH-mm-ss").format(DateTime.now());
    fileName = "$dt.log";
    initFile( version, buildNumber);
  }
  IOSink? fileWriter;
  void initFile(String version,String buildNumber) async {
    var supportDir = await getApplicationCacheDirectory();
    var logDir = Directory("${supportDir.path}/log");
    if (!await logDir.exists()) {
      await logDir.create();
    }
    var logFile = File("${logDir.path}/$fileName");
    fileWriter = logFile.openWrite(mode: FileMode.append);
    writeSystemInfo(version,buildNumber);
  }

  void write(String content) {
    fileWriter?.write(content);
    fileWriter?.write("\r\n");
  }

  Future close() async {
    await fileWriter?.close();
  }

  void writeSystemInfo(String version,String buildNumber) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    write("System Info:");
    write("Current Time: ${DateTime.now()}");
    write("Platform: ${Platform.operatingSystem}");
    write("Version: ${Platform.operatingSystemVersion}");
    write("Local: ${Platform.localeName}");
    write(
        "App Version: ${version}+${buildNumber}");
    if (Platform.isAndroid) {
      write((await deviceInfo.androidInfo).data.toString());
    } else if (Platform.isIOS) {
      write((await deviceInfo.iosInfo).data.toString());
    } else if (Platform.isLinux) {
      write((await deviceInfo.linuxInfo).data.toString());
    } else if (Platform.isMacOS) {
      write((await deviceInfo.macOsInfo).data.toString());
    } else if (Platform.isWindows) {
      write((await deviceInfo.windowsInfo).data.toString());
    }
    write("End System Info");
  }
}

class DebugLogModel {
  final String content;
  final DateTime datetime;
  final Color? color;
  DebugLogModel(this.datetime, this.content, {this.color});
}
