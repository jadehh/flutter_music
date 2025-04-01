/*
 * @File     : music_detail_page.dart
 * @Author   : jade
 * @Date     : 2024/12/19 9:49
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/app/music_player/views/back_ground_view.dart';
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/utils/utils.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';
import 'package:flutter_lyric/lyric_ui/ui_netease.dart';
import 'package:flutter_lyric/lyrics_reader_widget.dart';

class MusicDetailPage extends GetView<MusicPlayController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(children: [
        BlurBackground(),
        Column(
          children: [
            _PlayingTitle(),
            Expanded(child: _CenterSection()),
            _BottomSection(),
          ],
        )
      ])
    );
  }
}


class _PlayingTitle extends GetView<MusicPlayController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppStyle.hGap8,
        IconButton(onPressed: Get.back, icon: Icon(CupertinoIcons.chevron_down,color: Colors.white)),
        Expanded(child: Column(
          children: [
            Obx(()=>Text(
              controller.detail.value.otherSource!,
              style: context.theme.primaryTextTheme.titleMedium,
            )),
          ],
        )),
        IconButton(onPressed: Get.back, icon: Icon(CupertinoIcons.share,color: Colors.white)),
        AppStyle.hGap8
      ],
    );
  }
}


class _CenterSection extends GetView<MusicPlayController> {
  Widget build(BuildContext context) {
    return Obx(()=>AnimatedCrossFade(
        crossFadeState: controller.showLyric.value ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        layoutBuilder: (
            Widget topChild,
            Key topChildKey,
            Widget bottomChild,
            Key bottomChildKey,
            ) {
          return Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: <Widget>[
              Center(
                key: bottomChildKey,
                child: bottomChild,
              ),
              Center(
                key: topChildKey,
                child: topChild,
              ),
            ],
          );
        },
        duration: const Duration(milliseconds: 300),
        firstChild:  GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              controller.showLyric.value = true;
            },
            child: Padding(padding: EdgeInsets.all(32),child: ClipOval(child: CachedNetworkImage(imageUrl: controller.detail.value.img!)),)
        ),
        secondChild:  Obx(()=>LyricsReader(
          model: controller.lyricModelBuilder.value.getModel(),
          lyricUi: UINetease(),
          position: controller.progress.value ,
          size: Size(double.infinity, MediaQuery.of(context).size.height / 2),
          selectLineBuilder: (progress, confirm) {
            return Row(
              children: [
                AppStyle.hGap4,
                Text(
                  Utils.formatPlayTime(Duration(milliseconds: progress).inSeconds),
                  style: TextStyle(color:  context.theme.primaryColor),
                ),
                AppStyle.hGap12,
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color:  context.theme.primaryColor),
                    height: 1,
                    width: double.infinity,
                  ),
                ),
                AppStyle.hGap12,
                IconButton(
                    onPressed: () {
                      controller.progress.value = progress;
                      confirm.call();
                    },
                    icon: Icon(Icons.play_arrow, color: context.theme.primaryColor)),
                AppStyle.hGap4,
              ],
            );
          },
          onTap: (){
            controller.showLyric.value = false;
          },
        ))
    ),);
  }
}
class _BottomSection extends GetView<MusicPlayController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(padding: AppStyle.edgeInsetsA16,child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Flexible(flex: 6,child:Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(()=>Text(controller.detail.value.name,style: context.textTheme.titleLarge)),
                    Container(
                      height: 30,
                      child: Row(
                        children: [
                          Expanded(child:Obx(()=>Marquee(
                            text: controller.detail.value.singer + " - " + controller.detail.value.albumName,
                            style: context.textTheme.titleSmall,
                            scrollAxis: Axis.horizontal,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            blankSpace: 10.0,
                            velocity: 100.0,
                            pauseAfterRound: Duration(seconds: 1),
                            accelerationDuration: Duration(seconds: 1),
                            accelerationCurve: Curves.linear,
                            decelerationDuration: Duration(milliseconds: 500),
                            decelerationCurve: Curves.easeOut,
                          ))),
                          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.chevron_right,color: Colors.white,size: 12,))
                        ],
                      ),
                    ),
                  ],
                ),
              )),
              Flexible(flex:4,child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart,color: Colors.white,)),
                        Text("收藏数量",style: context.textTheme.titleSmall,),
                      ],
                    ),
                    AppStyle.hGap8,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.comment,color: Colors.white,)),
                        Text("评论数量",style: context.textTheme.titleSmall,)
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
          AppStyle.vGap4,
          Obx(()=>ProgressBar(progress: Duration(milliseconds: controller.progress.value), total: Duration(seconds: controller.detail.value.duration),timeLabelTextStyle: context.textTheme.titleSmall,thumbRadius: 5,thumbCanPaintOutsideBar: false,thumbGlowRadius:5,onSeek: (Duration progress){
            controller.progress.value = progress.inMilliseconds;
          },)),
          AppStyle.vGap4,
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shuffle,color: Colors.white)),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.fast_rewind,color: Colors.white)),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.pause_circle,color: Colors.white)),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.fast_forward,color: Colors.white)),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white))
            ],
          ),
          AppStyle.vGap4,
          Row(
            children: [
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(FluentIcons.arrow_download_16_filled,color: Colors.white)),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.white)),
              Spacer(),
            ],
          ),
        ],
      )),
    );
  }

}