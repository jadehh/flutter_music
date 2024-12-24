/*
 * @File     : music_albums_view.dart
 * @Author   : jade
 * @Date     : 2024/12/16 14:15
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/page_grid_view.dart';
import 'package:flutter_music/app/music_albums/controllers/music_albums_page_controller.dart';
import 'package:flutter_music/app/music_albums/views/music_album_car_view.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/api/index.dart';
import 'package:get/get.dart';

class MusicAlbumsView extends StatefulWidget {
  final SourceBaseApi sourceBaseApi;

  const MusicAlbumsView({required this.sourceBaseApi, super.key});

  @override
  State<StatefulWidget> createState() => _MusicAlbumView();
}

class _MusicAlbumView extends State<MusicAlbumsView> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MusicAlbumsPageController>(tag: widget.sourceBaseApi.key);
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      dividerColor: Colors.transparent,
                      controller: controller.tabController,
                      tabs:widget.sourceBaseApi.sortList.map((item)=>Tab(child: Text(_getName(context, item)))).toList())),
              TextButton(
                  onPressed: () {
                    Get.dialog(Dialog(
                      child: Text("显示排行"),
                    ));
                  },
                  child: Text(S.of(context).songlist_tag_default))
            ],
          ),
        ),
        Expanded(
            child: PageGridView(
          itemBuilder: (context, index) => MusicAlbumsCarView(sourceApi:widget.sourceBaseApi,musicAlbum: controller.list[index]),
          pageController: controller,
          crossAxisCount: MediaQuery.of(context).size.width ~/ 180,
          showPageLoading: true,
          firstRefresh: controller.list.isEmpty,
        )),
      ],
    );
  }

  static _getName(BuildContext context, item) {
    var name = "";
    switch (item["tid"]) {
      case "new":
        name = S.of(context).songlist_new;
        break;
      case "recommend":
        name = S.of(context).songlist_recommend;
        break;
      case "hot":
        name = S.of(context).songlist_hot;
        break;
      case "hot_collect":
        name = S.of(context).songlist_hot_collect;
        break;
      case "rise":
        name = S.of(context).songlist_rise;
        break;
    }
    return name;
  }
}
