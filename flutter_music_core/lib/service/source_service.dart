/*
 * @File     : source_service.dart
 * @Author   : jade
 * @Date     : 2024/12/11 14:34
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     : 源服务
 */
import 'package:flutter_music_core/models/db/user_api_info.dart';
import 'package:flutter_music_core/utils/box.dart';
import 'package:flutter_music_core/utils/source.dart';
import 'package:get/get.dart';
class SourceService extends GetxService{

  static SourceService get instance => Get.find<SourceService>();

  /// 源列表
  RxList<UserApiInfo> sourceList = RxList<UserApiInfo>();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadData();
  }

  loadData() async{
    var list = BoxUtil.getUserApiInfoList();
    sourceList.assignAll(list);
    for (var source in sourceList){
      await SourceUtil.initJS(source);
    }
  }
}