/*
 * @File     : home_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/6 10:45
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music/app/base/views/text_view.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/service/api_service.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter_music_core/main.dart';

class IndexedController extends GetxController with GetSingleTickerProviderStateMixin{
  var navIndex = 0.obs;
  final zoomDrawerController = ZoomDrawerController();
  late TabController tabController;
  ApiService apiService = Get.find<ApiService>();
  SettingService settingService = Get.find<SettingService>();
  late List<HotSearch> hotSearchList;
  IndexedController(){
    tabController = TabController(length: Constant.sites().length, vsync: this);
    tabController.addListener((){
      if(tabController.index == tabController.animation?.value){
        EventBus.instance.emit(EventBus.apiHotSearchEventName, tabController.index);
      }
    });
    hotSearchList = List.generate(Constant.sites().length, (item)=>HotSearch(sourceName: "", list: []));
  }
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    EventBus.instance.listen(EventBus.sourceDialogEventName,(sourceEvent) async {
        Get.dialog(AlertDialog(
          content: TextView(S.of(Get.context!).user_api__init_failed_alert(sourceEvent.name)+sourceEvent.errorMessage),
          actions: [
            TextButton(onPressed: (){
              Get.back();
            }, child: TextView(S.of(Get.context!).ok))
          ],
        ));
      },
    );
    EventBus.instance.listen(EventBus.apiDialogEventName,(msg) async {
      Get.dialog(AlertDialog(
        content: TextView(S.of(Get.context!).search_hot_search + ":" + msg),
        actions: [
          TextButton(onPressed: (){
            Get.back();
          }, child: TextView(S.of(Get.context!).ok))
        ],
      ));
    });

    EventBus.instance.listen(EventBus.apiHotSearchEventName,(index) async {
      // 获取热词
      List<String> hotList = [];
      final api = Constant.sites()[index].api;
      if(index == Constant.sites().length - 1){
        for(var i = 0; i< index;i++){
          if(hotSearchList[i].list.isEmpty){
            try{
              hotSearchList[i] = (await api.getHotSearch())!;
              hotList.addAll(hotSearchList[i].list);
            }catch(e){
            }
          }
          else{
            hotList.addAll(hotSearchList[i].list);
          }
        }
        apiService.setHotWords(HotSearch(sourceName: "all", list: hotList));
      }else{
        if (hotSearchList[index].list.isEmpty){
          try{
            hotSearchList[index] = (await api.getHotSearch())!;
          }catch(e){
            EventBus.instance.emit(EventBus.apiDialogEventName, "获取热搜词失败");
          }
        }
        apiService.setHotWords(hotSearchList[index]);
      }
    });

    EventBus.instance.emit(EventBus.apiHotSearchEventName,0);

  }
}