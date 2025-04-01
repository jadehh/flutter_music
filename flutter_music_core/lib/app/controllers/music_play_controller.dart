/*
 * @File     : music_play_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/24 14:50
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter_lyric/lyrics_model_builder.dart';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';

enum PlayStatus{
  waiting,
  pause,
  play,
  stop,
}

class MusicPlayController extends GetxController{
  var playStatus = PlayStatus.stop.obs;
  var showLyric = false.obs;
  var progress = 0.obs;
  Rx <MusicDetail> detail = Rx<MusicDetail>(MusicDetail.MusicDetailNull);
  Rx <LyricsModelBuilder> lyricModelBuilder = Rx<LyricsModelBuilder>(LyricsModelBuilder.create());

  MusicPlayController();

  void play(MusicDetail musicAlbumDetail,SourceBaseApi sourceApi) async{
    playStatus.value = PlayStatus.waiting;
    musicAlbumDetail.img = await sourceApi.getMusicPicUrl(musicAlbumDetail.songId);
    var lrc = await sourceApi.getLyric(musicAlbumDetail);
    lrc = lrc.replaceAll(RegExp('<(?:[^>])*>'), '');
    musicAlbumDetail.lrc = lrc;
    lyricModelBuilder.value.bindLyricToMain(lrc);
    detail.value = musicAlbumDetail;
  }
}