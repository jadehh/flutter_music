/*
 * @File     : music_album_car_view.dart
 * @Author   : jade
 * @Date     : 2024/12/16 14:41
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/app/base/views/net_image.dart';
import 'package:flutter_music/app/routes/route_path.dart';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';


class MusicAlbumsCarView extends StatelessWidget{
  final MusicAlbum musicAlbum;
  final SourceBaseApi sourceApi;
  const MusicAlbumsCarView({required this.sourceApi,required this.musicAlbum,super.key});
  @override
  Widget build(BuildContext context) {
    final settingService = Get.find<SettingService>();
    // TODO: implement build
    return InkWell(child: Padding(padding: AppStyle.edgeInsetsA8,child: Obx(()=>Container(
        height: 160 + (settingService.fontSize.value) * 2,
        child: Column(
          children: [
            SizedBox(height:140,child: NetImage(musicAlbum.img,borderRadius: 8,)),
            Text(musicAlbum.name,maxLines: 2)
          ],
        )
    )),),onTap: (){
      Get.toNamed(RoutePath.KMusicAlbumsDetail,arguments:[sourceApi,musicAlbum]);
    },);
  }
}