/*
 * @File     : text_view.dart
 * @Author   : jade
 * @Date     : 2024/11/29 13:22
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */


import 'package:flutter/widgets.dart';
import 'package:flutter_music_core/main.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class TextView extends StatelessWidget{
  final String? data;
  final bool? ellipsis;
  final Color? color;
  const TextView(this.data,{this.ellipsis=false,this.color,super.key});
  @override
  Widget build(BuildContext context) {
    final settingService = Get.find<SettingService>();
    // TODO: implement build
    return Obx(()=>Container(
        child: ellipsis == true ?
        Text(data!, maxLines: 1, softWrap: false, overflow: TextOverflow.ellipsis,style: GoogleFonts.roboto( fontSize: settingService.fontSize.value,color: color)):
        Text(data!,style:  GoogleFonts.roboto( fontSize: settingService.fontSize.value,color: color))),
    );
  }
}