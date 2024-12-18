/*
 * @File     : source_base_api.dart
 * @Author   : jade
 * @Date     : 2024/12/16 10:39
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/service/api_service.dart';
import 'package:get/get.dart';
class SourceBaseApi{
  String get key => "";
  static ApiService get apiService => Get.find<ApiService>();
  int get limit_list => 0;
  List get sortList => [];

  // 获取列表数据
  Future<List<MusicAlbum>> getList({sortId, tagId, page, tryNum=0}) async{
    return [];
  }

  // 获取热搜
  Future<HotSearch?> getHotSearch() async{
    return null;
  }
}