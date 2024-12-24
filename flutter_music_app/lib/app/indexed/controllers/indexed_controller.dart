/*
 * @File     : home_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/6 10:45
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/service/api_service.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:flutter_music_core/main.dart' as Core;

class IndexedController extends GetxController with GetSingleTickerProviderStateMixin{
  var navIndex = 0.obs;
  final zoomDrawerController = ZoomDrawerController();
  late TabController tabController;
  ApiService apiService = Get.find<ApiService>();
  Core.SettingService settingService = Get.find<Core.SettingService>();
  late List<Core.HotSearch> hotSearchList;
  IndexedController(){
    tabController = TabController(length: Constant.sites().length, vsync: this);
    tabController.addListener((){
      if(tabController.index == tabController.animation?.value){
        Core.EventBus.instance.emit(Core.EventBus.apiHotSearchEventName, tabController.index);
      }
    });
    hotSearchList = List.generate(Constant.sites().length, (item)=>Core.HotSearch(sourceName: "", list: []));
  }
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    Core.EventBus.instance.listen(Core.EventBus.sourceDialogEventName,(sourceEvent) async {
        Get.dialog(AlertDialog(
          content: Text(S.of(Get.context!).user_api__init_failed_alert(sourceEvent.name)+sourceEvent.errorMessage),
          actions: [
            TextButton(onPressed: (){
              Get.back();
            }, child: Text(S.of(Get.context!).ok))
          ],
        ));
      },
    );
    Core.EventBus.instance.listen(Core.EventBus.apiDialogEventName,(msg) async {
      Get.dialog(AlertDialog(
        content: Text(S.of(Get.context!).search_hot_search + ":" + msg),
        actions: [
          TextButton(onPressed: (){
            Get.back();
          }, child: Text(S.of(Get.context!).ok))
        ],
      ));
    });

    Core.EventBus.instance.listen(Core.EventBus.apiHotSearchEventName,(index) async {
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
        apiService.setHotWords(Core.HotSearch(sourceName: "all", list: hotList));
      }else{
        if (hotSearchList[index].list.isEmpty){
          try{
            hotSearchList[index] = (await api.getHotSearch())!;
          }catch(e){
            Core.EventBus.instance.emit(Core.EventBus.apiDialogEventName, "获取热搜词失败");
          }
        }
        apiService.setHotWords(hotSearchList[index]);
      }
    });

    Core.EventBus.instance.emit(Core.EventBus.apiHotSearchEventName,0);

  }
}