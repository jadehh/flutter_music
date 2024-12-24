/*
 * @File     : music_albums_detail_page.dart
 * @Author   : jade
 * @Date     : 2024/12/20 9:13
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/app/base/views/app_scaffold.dart';
import 'package:flutter_music/app/base/views/quality_text_view.dart';
import 'package:flutter_music/app/music_albums/controllers/music_albums_detail_page_controller.dart';
import 'package:flutter_music/app/music_albums/views/music_list_header.dart';
import 'package:flutter_music/app/music_albums/views/playlist_flexible_app_bar.dart';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';
const double kHeaderHeight = 280 + kToolbarHeight;
class MusicAlbumsDetailPage extends GetView<MusicAlbumsDetailPageController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppScaffold(body: EasyRefresh(
        header: MaterialHeader(
          processedDuration: const Duration(milliseconds: 400),
        ),
        footer: MaterialFooter(
          processedDuration: const Duration(milliseconds: 400),
        ),
        controller: controller.refreshController,
        refreshOnStart: true,
        onRefresh: () async {
          controller.refresh();
        },
        child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: EasyRefresh(
              child: SizedBox.shrink(),),
              ),
          _Appbar(album:controller.album,controller: controller),
          _MusicList(controller: controller,),
        ],
    )));
  }
}

class _Appbar extends StatelessWidget {
  final MusicAlbum album;
  final MusicAlbumsDetailPageController controller;
  const _Appbar({required this.album,required this.controller});

  @override
  Widget build(BuildContext context) => SliverAppBar(
    elevation: 0,
    pinned: true,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    expandedHeight: kHeaderHeight,
    bottom: MusicListHeader(controller.detail,tail: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.download_circle, color:context.theme.primaryColor)),
      IconButton(onPressed: (){}, icon: Icon(Icons.menu_sharp,  color:context.theme.primaryColor,)),
    ],),),
    flexibleSpace: PlaylistFlexibleAppBar(album:album,albumDetail: controller.detail),
  );

}

class _MusicList extends StatelessWidget {
  final MusicAlbumsDetailPageController controller;
  const _MusicList({required this.controller});

  @override
  Widget build(BuildContext context) {
    final playController = Get.find<MusicPlayController>();
    return Obx(()=>SliverList(
      delegate:
      SliverChildBuilderDelegate(
            (context, index) =>
               ListTile(
                onTap: (){
                  playController.play(controller.detail.value.list[index],controller.sourceApi);
                },
                leading: Text((index+1).toString(),
                  style: context.textTheme.bodySmall!.copyWith(fontSize: 15),),title:  Text(controller.detail.value.list[index].name),subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  QualityTextView(typesDic: controller.detail.value.list[index].typesDic),
                  AppStyle.hGap8,
                  Expanded(child: Text(controller.detail.value.list[index].singer + "-" + controller.detail.value.list[index].albumName,maxLines: 1,overflow: TextOverflow.ellipsis,style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),)),
                ],
              ),trailing: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(controller.detail.value.list[index].interval,style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart_fill,color: Colors.red)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                ],
              ),),
        childCount: controller.detail.value.list.length),
    ));
  }
}