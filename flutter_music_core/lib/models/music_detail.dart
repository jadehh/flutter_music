/*
 * @File     : music_detail.dart
 * @Author   : jade
 * @Date     : 2024/12/23 13:48
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
class MusicDetail{
  final String singer;
  final String name;
  final String albumName;
  final String albumId;
  final String songId;
  final String source;
  final String interval;
  final int duration;
  late  String? img;
  final String? lrc;
  final String? otherSource;
  final List<dynamic> types;
  final Map<String,dynamic> typesDic;
  final Map<String,String>? typeUrl;
  MusicDetail({required this.singer,required this.name,required this.albumName,required this.albumId,required this.songId,required this.source,required this.duration,required this.interval,this.img,this.lrc,this.otherSource, required this.types,required this.typesDic,this.typeUrl,});
  static get MusicDetailNull => MusicDetail(singer: "", name: "", albumName: "", albumId: "", songId: "", source: "",duration: 0, interval: "", types: [], typesDic: {});
}

