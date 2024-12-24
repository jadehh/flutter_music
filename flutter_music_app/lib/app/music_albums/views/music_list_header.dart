/*
 * @File     : music_list_header.dart
 * @Author   : jade
 * @Date     : 2024/12/20 11:21
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';
/// The header view of MusicList
class MusicListHeader extends GetView implements PreferredSizeWidget {
  final Rx<MusicAlbumDetail> albumDetail;
  const MusicListHeader(this.albumDetail, {this.tail, super.key});
  final Widget? tail;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Log.d("点击播放");
        },
        child: SizedBox.fromSize(
          size: preferredSize,
          child: ListTile(
            leading: Icon(
              Icons.play_circle_fill,
              color:context.theme.primaryColor,
            ),
            title: Row(
              children: [
                Text(
                  S.of(context).play_all,
                  style: context.textTheme.bodyLarge,
                ),
                const SizedBox(width: 6),
                Obx(()=>Text('(${S.of(context).list_music_count_format(albumDetail.value.total)})',
                  style: Theme.of(context).textTheme.bodySmall,
                ))
              ],
            ),
            trailing: tail,
          )
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
