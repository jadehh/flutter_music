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
  List get sortList => [];

  // 获取列表数据
  Future<List<MusicAlbum>> getList({sortId, tagId, page, tryNum=0}) async{
    return [];
  }

  // 获取热搜
  Future<HotSearch?> getHotSearch() async{
    return null;
  }

  // 获取歌曲列表内的音乐
  Future<MusicAlbumDetail> getListDetail(String id, int page,{ retryNum = 0}) async{
    return MusicAlbumDetailNull;
  }

  // 获取歌曲图片

  Future<String> getMusicPicUrl(String songId) async{
    return "";
  }

   get MusicAlbumDetailNull =>  MusicAlbumDetail(list: [], page: 0, limit: 0, total: 0, source: "", info: AlbumDetailInfo(title: "", pic: "", desc: "", author: "", playNum: "0",shareNum: 0,collectNum: 0,commentNum: 0));

}