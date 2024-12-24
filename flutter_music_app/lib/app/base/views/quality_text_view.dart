/*
 * @File     : quality_text_view.dart
 * @Author   : jade
 * @Date     : 2024/12/24 10:36
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:get/get.dart';
class QualityTextView extends StatelessWidget{
  final Map<String, dynamic> typesDic;
  const QualityTextView({required this.typesDic,super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (typesDic.containsKey("flac24bit")){
      return _QualityTextView(text: S.of(context).quality_lossless_24bit, color: Colors.red);
    }else if (typesDic.containsKey("flac")){
      return _QualityTextView(text: S.of(context).quality_lossless, color: Colors.blue);
    }else{
      return _QualityTextView(text: S.of(context).quality_high_quality, color: Colors.green);
    }
  }
}

class _QualityTextView extends StatelessWidget{
  final Color color;
  final String text;
  const _QualityTextView({required this.text,required this.color});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.fromLTRB(1,0,1,0),
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 0.5), // 设置边框样式
        ),
        child:Text(text,style: Get.textTheme.bodySmall!.copyWith(color: color)
        ));
  }
}