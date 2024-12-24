/*
 * @File     : music_albums_detail_page_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/20 9:33
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';
class MusicAlbumsDetailPageController extends GetxController{

  EasyRefreshController refreshController = EasyRefreshController( controlFinishRefresh: true);
  Rx<MusicAlbumDetail> detail = Rx<MusicAlbumDetail>(SourceBaseApi().MusicAlbumDetailNull);
  var currentPage = 1;
  final MusicAlbum album;
  final SourceBaseApi sourceApi;
  MusicAlbumsDetailPageController({required this.sourceApi,required this.album});


  Future<MusicAlbumDetail> loadData() async{
    return await sourceApi.getListDetail(album.id, currentPage);
  }

  Future refresh() async{
    detail.value =  (await sourceApi.getListDetail(album.id, currentPage));
    refreshController.finishRefresh(IndicatorResult.success);
  }
}