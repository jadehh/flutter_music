/*
 * @File     : music_detail_page.dart
 * @Author   : jade
 * @Date     : 2024/12/19 9:49
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/app/music_player/views/album_cover.dart';
import 'package:flutter_music/app/music_player/views/back_ground_view.dart';
import 'package:flutter_music_core/app/controllers/music_play_service.dart';
import 'package:flutter_music_core/models/track.dart';
import 'package:get/get.dart';
class MusicDetailPage extends GetView<MusicPlayController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(children: [
        BlurBackground(),
        Column(
          children: [
            PlayingTitle(),
            CenterSection()
          ],
        )
      ])
    );
  }
}


class PlayingTitle extends StatelessWidget {
  const PlayingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppStyle.hGap8,
        IconButton(onPressed: Get.back, icon: Icon(Icons.arrow_drop_down,color: Colors.white)),
        Expanded(child: Center(child: Text(
          "Music Name",
          style: context.theme.primaryTextTheme.titleMedium,
        ))),
        IconButton(onPressed: Get.back, icon: Icon(Icons.share,color: Colors.white)),
        AppStyle.hGap8
      ],
    );
  }
}


class CenterSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CenterSection();
}

class _CenterSection extends State<CenterSection>{
  var showLyric = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedCrossFade(
          crossFadeState: showLyric ? CrossFadeState.showSecond : CrossFadeState.showFirst,
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
          firstChild: GestureDetector(
            onTap: () {
              showLyric = true;
              setState(() {
              });
            },
            child: AlbumCover(music: Track(id: 1, uri: "", name: "", artists: [], album: null , imageUrl: "https://img1.kuwo.cn/star/userpl2015/46/73/1639391305931_560877346_500.jpg", duration: Duration(seconds: 30) , type: TrackType.free)),
          ),
          secondChild: GestureDetector(
            child: Text("显示歌词"),
            onTap: (){
              showLyric = false;
              setState(() {
              });
            },
          )
      ),
    );
  }
}