/*
 * @File     : source.dart
 * @Author   : jade
 * @Date     : 2024/12/16 10:40
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter_music_core/api/source_base_api.dart';

class Source{
  final String key;
  final String logo;
  final SourceBaseApi api;
  final int index;
  final String? realName;
  final String? aliasName;
  const Source(this.realName, this.aliasName, {required this.key,required this.logo,required this.api,required this.index});

}