/*
 * @File     : user_api_source_info.dart
 * @Author   : jade
 * @Date     : 2024/12/4 17:15
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:json_annotation/json_annotation.dart';
part 'user_api_source_info.g.dart';

enum UserApiSourceInfoType{
  music
}
enum Quality{
  k128,
  k320,
  flac,
  flac24bit,
  k192,
  ape,
  wav,
}

enum UserApiSourceInfoActions{
  musicUrl,
  lyric,
  pic,
}

@JsonSerializable()
class UserApiSourceInfo {
  final String name = "";
  final UserApiSourceInfoType type = UserApiSourceInfoType.music;
  final List<UserApiSourceInfoActions> actions = [];
  final List<Quality> qualities = [];
  UserApiSourceInfo();
  factory UserApiSourceInfo.fromJson(Map<String, dynamic> json) => _$UserApiSourceInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserApiSourceInfoToJson(this);
}