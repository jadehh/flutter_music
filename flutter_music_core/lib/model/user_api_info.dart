/*
 * @File     : user_api_info.dart
 * @Author   : jade
 * @Date     : 2024/12/4 17:10
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter_music_core/model/user_api_source_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_api_info.g.dart';

@JsonSerializable()
class UserApiInfo{
  late  String? id;
  late String? name;
  late String? description;
  // script:string
  late  bool? allowShowUpdateAlert;
  late String? author;
  late String? homepage;
  late String? version;
  late UserApiSourceInfo? sourceInfo;
  UserApiInfo({this.id, this.name, this.description, this.allowShowUpdateAlert, this.author, this.homepage, this.version, this.sourceInfo});
  factory UserApiInfo.fromJson(Map<String, dynamic> json) => _$UserApiInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserApiInfoToJson(this);
}