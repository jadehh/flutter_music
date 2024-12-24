/*
 * @File     : music_play_service.dart
 * @Author   : jade
 * @Date     : 2024/12/24 14:50
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/utils/utils.dart';
import 'package:get/get.dart';

enum PlayStatus{
  waiting,
  pause,
  play,
  stop,
}

class MusicPlayController extends GetxController{
  var playStatus = PlayStatus.stop.obs;
  var seekTime = "00:00".obs;
  Rx <MusicDetail> detail = Rx<MusicDetail>(MusicDetail.MusicDetailNull);
  MusicPlayController();

  void play(MusicDetail musicAlbumDetail,SourceBaseApi sourceApi) async{
    playStatus.value = PlayStatus.waiting;
    musicAlbumDetail.img = await sourceApi.getMusicPicUrl(musicAlbumDetail.songId);
    detail.value = musicAlbumDetail;
  }

  void seek(Duration duration) {
    seekTime.value = Utils.formatPlayTime(duration.inSeconds);
  }
}