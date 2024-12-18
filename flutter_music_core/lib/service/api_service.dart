/*
 * @File     : api_service.dart
 * @Author   : jade
 * @Date     : 2024/12/13 16:48
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:async';
import 'dart:math';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';


class ApiService extends GetxService {
  var hotWord = "".obs;
  var _hotWordList = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    refreshHotWord();
  }


  setHotWords(HotSearch hotSearch){
    clear();
    if (hotSearch.list.isNotEmpty){
      _hotWordList = List.from( hotSearch.list);
      hotWord.value = _hotWordList[Random().nextInt(_hotWordList.length)];
    }
  }

  refreshHotWord() {
    // 创建一个Timer，每隔1秒执行repeatFunction函数
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (_hotWordList.length > 0)
        hotWord.value = _hotWordList[Random().nextInt(_hotWordList.length)];
    });
  }

  clear() {
    _hotWordList.clear();
    hotWord.value = "";
  }
}