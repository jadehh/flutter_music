/*
 * @File     : user_api_info.dart
 * @Author   : jade
 * @Date     : 2024/12/4 17:10
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     : 音乐源
 */

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:quick_js/quick_js.dart';

part 'user_api_info.g.dart';

@HiveType(typeId: 1)
class UserApiInfo {
  UserApiInfo(
    this.selected, {
    required this.id,
    required this.name,
    required this.allowShowUpdateAlert,
    required this.description,
    required this.author,
    required this.homepage,
    required this.version,
    required this.script,
  });

  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String description;

  @HiveField(3)
  bool allowShowUpdateAlert;

  @HiveField(4)
  String author;

  @HiveField(5)
  String homepage;

  @HiveField(6)
  String version;

  @HiveField(7)
  bool selected = false;

  @HiveField(8)
  String script;

  /// 初始化状态
  /// 0=未知(初始化中) 1=初始化中 2=初始化失败 3初始化成功
  Rx<int> initStatus = 0.obs;

  /// 选中状态
  ///
  Rx<bool> selectStatus = false.obs;


  /// 脚本
  Spider? spider;

  factory UserApiInfo.fromJson(Map<String, dynamic> json) {
    return UserApiInfo(
        json["select"] ?? false,
        id: json["id"] ?? "",
        name: json["name"],
        allowShowUpdateAlert: json["allowShowUpdateAlert"] ?? false,
        description: json["description"] ,
        author: json["author"],
        homepage: json["homepage"],
        version: json["version"],
        script: json["script"] ?? "");
  }

  Map<String, dynamic> toJson() {
    return {
      "id":id,
      "allowShowUpdateAlert": allowShowUpdateAlert,
      "script": script,
      "name": name,
      "selected": selected,
      "description": description,
      "author": author,
      "homepage": homepage,
      "version": version
    };
  }
}
