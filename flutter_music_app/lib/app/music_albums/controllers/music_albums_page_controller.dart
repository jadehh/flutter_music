/*
 * @File     : music_albums_page_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/17 15:20
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/controllers/base_controller.dart';
import 'package:flutter_music_core/main.dart';

class MusicAlbumsPageController extends BasePageController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  var _currentTabIndex = 0;
  late SourceBaseApi _api;
  String? _sid;

  MusicAlbumsPageController({required SourceBaseApi api}){
    _api  = api;
    tabController = TabController(length: api.sortList.length, vsync: this);
    tabController.animation?.addListener(() {
      var currentIndex = (tabController.animation?.value ?? 0).round();
      if (_currentTabIndex == currentIndex) {
        return;
      }
      _currentTabIndex = currentIndex;
      easyRefreshController.callRefresh();
      loadData();
    });
  }

  @override
  Future<List<MusicAlbum>> getData(int page, int pageSize) async {
    return _api.getList(sortId:_sid ?? _api.sortList[_currentTabIndex]["id"],page: page);
  }
}