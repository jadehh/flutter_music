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
import 'package:flutter_music_core/app/controllers/music_play_service.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

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
          width: 40,
          height: 40,
          child: controller.detail.value.img == null ? SizedBox.shrink():CachedNetworkImage(
              imageUrl: controller.detail.value.img!,fit: BoxFit.fill,
          ),
        ),
      ) ,
      title: Row(
        children: [
          Text(
              controller.detail.value.name,
              style:Get.theme.textTheme.bodyMedium
          ),
          AppStyle.hGap4,
          Text("-"),
          AppStyle.hGap4,
          Expanded(child: Text(controller.detail.value.singer,maxLines: 1,overflow: TextOverflow.ellipsis,style:Get.theme.textTheme.bodyMedium))
        ],
      ),
      subtitle:Column(
        children: [
          Stack(
            children: [
              Positioned.fill(child:Align(child: Text("显示歌词",style: Get.textTheme.labelSmall!.copyWith(color: Colors.grey)),alignment: Alignment.centerLeft,),),
              Obx(()=> ProgressBar(
                thumbGlowRadius: 0,
                thumbRadius: 0,
                progressBarColor: Get.theme.primaryColor.withOpacity(0.3),
                baseBarColor: Get.theme.primaryColor.withOpacity(0.1),
                barCapShape: BarCapShape.square,
                barHeight: 20,
                timeLabelLocation: TimeLabelLocation.none,
                progress: Duration(seconds: 0),
                buffered: Duration(seconds: 0),
                total: Duration(seconds: controller.detail.value.duration),
                onSeek: (duration) {
                  controller.seek(duration);
                },
              ),),
              Positioned.fill(child:Align(child: Obx(()=> Text("${controller.seekTime.value} / ${controller.detail.value.interval}",style: Get.textTheme.labelSmall!.copyWith(color: Colors.grey))),alignment: Alignment.centerRight,),right: 5,)
            ],
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: (){},icon: Icon(Icons.play_arrow,color: Get.theme.primaryColor,)),
          const SizedBox(width: 8),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Get.theme.primaryColor,),tooltip: "当前播放列表",),
          const SizedBox(width: 8),
        ],
      ),
      ),visible: controller.playStatus.value != PlayStatus.stop));
  }

}

