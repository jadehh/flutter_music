/*
 * @File     : music_album.dart
 * @Author   : jade
 * @Date     : 2024/12/17 11:03
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter_music_core/utils/utils.dart';

class MusicAlbum {
  /**
   *     play_count: this.formatPlayCount(item.listencnt),
      id: `digest-${item.digest}__${item.id}`,
      author: item.uname,
      name: item.name,
      // time: item.publish_time,
      total: item.total,
      img: item.img,
      grade: item.favorcnt / 10,
      desc: item.desc,
      source: 'kw',

   * **/
  String playCount;
  String id;
  String author;
  String? time;
  String name;
  String total;
  String img;
  String grade;
  String desc;
  String source;

  MusicAlbum({required this.playCount,required this.id,required this.author,required this.name,this.time,required this.total,required this.img,required this.grade,required this.desc,required this.source});
  Map<String, dynamic> toJson() => _$MusicAlbumToJson(this);
  static _$MusicAlbumToJson(MusicAlbum instance){
    return {""};
  }

}