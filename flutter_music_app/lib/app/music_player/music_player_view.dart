/*
 * @File     : music_player_view.dart
 * @Author   : jade
 * @Date     : 2024/12/13 11:08
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/app/music_player/music_detail_page.dart';
import 'package:flutter_music_core/app/controllers/music_play_controller.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MusicPlayerView extends GetView<MusicPlayController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(()=>Visibility(child: ListTile(
      onTap: (){
        showMaterialModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(0)),
            ),
            context: context, builder: (context)=>MusicDetailPage()
        );
      },
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        child: Container(
          width: 30,
          height: 30,
          child: controller.detail.value.img == null ? SizedBox.shrink(): ClipOval(child: CachedNetworkImage(imageUrl: controller.detail.value.img!),
        ),)
      ) ,
      title: Row(
        children: [
          Text(
              controller.detail.value.name,
              style:context.textTheme.bodyMedium
          ),
          AppStyle.hGap4,
          Text("-"),
          AppStyle.hGap4,
          Expanded(child: Text(controller.detail.value.singer,maxLines: 1,overflow: TextOverflow.ellipsis,style:context.theme.textTheme.bodyMedium))
        ],
      ),
      // subtitle:Column(
      //   children: [
      //     Stack(
      //       children: [
      //         Positioned.fill(child:Align(child:
      //         Obx(()=>LyricsReader(
      //           position: controller.progress.value,
      //           model: controller.lyricModelBuilder.value.getModel(),
      //           lyricUi: LineLyricUi(color: context.theme.primaryColor),
      //         )),
      //         )),
      //         Obx(()=> ProgressBar(
      //           thumbGlowRadius: 0,
      //           thumbRadius: 0,
      //           progressBarColor: context.theme.primaryColor.withOpacity(0.3),
      //           baseBarColor: context.theme.primaryColor.withOpacity(0.1),
      //           barCapShape: BarCapShape.square,
      //           barHeight: 20,
      //           timeLabelLocation: TimeLabelLocation.none,
      //           progress: Duration(milliseconds: controller.progress.value),
      //           buffered: Duration(seconds: 0),
      //           total: Duration(seconds: controller.detail.value.duration),
      //           onSeek: (progress) {
      //             controller.progress.value = progress.inMilliseconds;
      //           },
      //         ),),
      //         Positioned.fill(child:Align(child: Obx(()=> Text("${Utils.formatPlayTime(Duration(milliseconds: controller.progress.value).inSeconds)} / ${controller.detail.value.interval}",style: context.textTheme.labelSmall!.copyWith(color: Colors.grey))),alignment: Alignment.centerRight,),right: 5,)
      //       ],
      //     ),
      //   ],
      // ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,color: context.theme.primaryColor,size: 32,)),
          AppStyle.hGap4,
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: context.theme.primaryColor,size: 32,),tooltip: "当前播放列表",),
          AppStyle.hGap4,
        ],
      ),
      ),visible: controller.playStatus.value != PlayStatus.stop));
  }

}

