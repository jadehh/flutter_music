/*
 * @File     : search_page_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/16 9:12
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/app/indexed/controllers/indexed_controller.dart';
import 'package:flutter_music_core/event/event.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController with GetSingleTickerProviderStateMixin {
  final IndexedController indexedController = Get.find<IndexedController>();
  late TabController tabController;
  SearchPageController() {
    tabController = TabController(length: Constant.sites().length, vsync: this);
    tabController.addListener((){
      if(tabController.index == tabController.animation?.value){
        EventBus.instance.emit(EventBus.apiHotSearchEventName,tabController.index);
      }
    });
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    EventBus.instance.emit(EventBus.apiHotSearchEventName,0);
  }
}