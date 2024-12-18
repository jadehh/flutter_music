/*
 * @File     : music_player_view.dart
 * @Author   : jade
 * @Date     : 2024/12/13 11:08
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/app_scaffold.dart';
import 'package:flutter_music/app/routes/route_path.dart';
import 'package:flutter_music/app/setting/pages/setting_basic_page.dart';
import 'package:get/get.dart';
class MusicPlayerView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print(double.maxFinite);
    // TODO: implement build
    return Material(
      elevation: 8,
      child: InkWell(
        onTap: (){
          Get.bottomSheet(AppScaffold(
            body: Container(color: Colors.red),
          ));
        },
        child: SizedBox(
          height: 80,
          child: Row(
            children: [
              const SizedBox(width: 16),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                child: Container(
                  color: Colors.blue,
                  width: 40,
                  height: 40,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: DefaultTextStyle(
                  style: const TextStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "音乐名称",
                        style:Get.theme.textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 2),
                      DefaultTextStyle(
                        maxLines: 1,
                        style: Get.theme.textTheme.bodySmall!,
                        child: Text("显示歌词"),
                      ),
                    ],
                  ),
                ),
              ),
              Container(width: 24,height:24,child:  CircularProgressIndicator(color: Get.theme.primaryColor,),),
              const SizedBox(width: 8),

              IconButton(onPressed: (){}, icon: Icon(Icons.menu),tooltip: "当前播放列表",),
              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }

}

