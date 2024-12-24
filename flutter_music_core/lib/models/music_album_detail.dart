/*
 * @File     : music_album_detail.dart
 * @Author   : jade
 * @Date     : 2024/12/23 13:19
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

// return {
// list: this.filterListDetail(body.musiclist),
// page,
// limit: body.rn,
// total: body.total,
// source: 'kw',
// info: {
// name: body.title,
// img: body.pic,
// desc: body.info,
// author: body.uname,
// play_count: this.formatPlayCount(body.playnum),
// },
// }
// })

import 'package:flutter_music_core/models/music_detail.dart';

class AlbumDetailInfo{
  final String title;
  final String pic;
  final String desc;
  final String author;
  final String playNum;
  final int shareNum; // 分享数量
  final int commentNum; // 评论数量
  final int collectNum; // 收藏数量
  const AlbumDetailInfo({required this.title,required this.pic,required this.desc,required this.author,required this.playNum,required this.shareNum,required this.commentNum,required this.collectNum});
}

class MusicAlbumDetail{
  final List<MusicDetail> list;
  final int page;
  final int limit;
  final int total;

  final String source;
  final AlbumDetailInfo info;
  const MusicAlbumDetail({required this.list,required this.page,required this.limit,required this.total,required this.source,required this.info});
}
