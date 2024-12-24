/*
 * @File     : music_album.dart
 * @Author   : jade
 * @Date     : 2024/12/17 11:03
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

class MusicAlbum {
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
}