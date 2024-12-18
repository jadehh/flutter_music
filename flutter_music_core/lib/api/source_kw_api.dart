/*
 * @File     : source_kw_api.dart
 * @Author   : jade
 * @Date     : 2024/12/16 14:48
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:convert';

import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music_core/api/source_base_api.dart';
import 'package:flutter_music_core/event/event.dart';
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/models/music_album.dart';
import 'package:flutter_music_core/utils/utils.dart';
import 'package:ok_http/ok_http.dart';

class SourceKWApi extends SourceBaseApi {
  static int successCode = 200;


  int get limit_list => 36;

  String get key => "kw";

  static get hotSearchApi => "http://hotword.kuwo.cn/hotword.s?prod=kwplayer_ar_9.3.0.1&corp=kuwo&newver=2&vipver=9.3.0.1&source=kwplayer_ar_9.3.0.1_40.apk&p2p=1&notrace=0&uid=0&plat=kwplayer_ar&rformat=json&encoding=utf8&tabid=1";

  static get hotSearchHeader => {"User-Agent": "Dalvik/2.1.0 (Linux; U; Android 9;)"};

  List get sortList =>
      [
        {"name": '最新', "tid": 'new', "id": 'new'},
        {"name": '最热', "tid": 'hot', "id": 'hot'}
      ];

  String getListUrl({sortId, id, type, page}) {
    if (id == null)
      return "http://wapi.kuwo.cn/api/pc/classify/playlist/getRcmPlayList?loginUid=0&loginSid=0&appUid=76039576&&pn=${page}&rn=${limit_list}&order=${sortId}";
    switch (type) {
      case '10000':
        return "http://wapi.kuwo.cn/api/pc/classify/playlist/getTagPlayList?loginUid=0&loginSid=0&appUid=76039576&pn=${page}&id=${id}&rn=${limit_list}";
      case '43':
        return "http://mobileinterfaces.kuwo.cn/er.s?type=get_pc_qz_data&f=web&id=${id}&prod=pc";
      default:
        return "";
    }
  }

  @override
  Future<List<MusicAlbum>> getList({sortId, tagId, page, tryNum = 0}) async {
    String? id;
    String? type;
    if (tagId != null) {
      var arr = tagId.split('-');
      id = arr[0];
      type = arr[1];
    } else {
      id = null;
    }
    // TODO: implement getList
    final res = await OkHttp.instance
        .getJson(getListUrl(sortId: sortId, id: id, type: type, page: page));
    if (id == null || type == "10000") {
      if (res.data["code"] != successCode)
        return await getList(sortId: sortId, tagId: tagId, page: page, tryNum: ++tryNum);
      return filterList(res.data["data"]["data"]);
    }
    return [];
    // filterList2(res);
  }

  List<MusicAlbum> filterList(List<dynamic> rawData) {
    return rawData.map((item) =>_$MusicAlbumFromJson(item)).toList();
  }

  MusicAlbum _$MusicAlbumFromJson(Map<String, dynamic> json){
    final musicAlbum = MusicAlbum(playCount: Utils.formatPlayCount(int.parse(json["listencnt"].toString())), id: "digest-${json["digest"]}__${json["id"]}", author: json["uname"], name: json["name"], total: json["total"], img: json["img"], grade: (int.parse(json["favorcnt"].toString()) / 10).toString(), desc: json["desc"], source: key);
    return musicAlbum;
  }



  filterList2(List<dynamic> rawData) {
    Log.d(rawData.toString());
    rawData.forEach((item) {
      if (item.containsKey("label")) return;
    });
  }


  @override
  Future<HotSearch?> getHotSearch() async {
    // TODO: implement getHotSearch
    try {
      List<String> hotSearchWordsList = [];
      final hotWordsResponse = await OkHttp.instance.getJson(hotSearchApi, header: hotSearchHeader);
      final jsonData = jsonDecode(hotWordsResponse.data);
      if (hotWordsResponse.statusCode != 200 || jsonData["status"] != 'ok') {
        EventBus.instance.emit(EventBus.apiDialogEventName, "获取热搜词失败");
      }
      for (var item in List<Map<String, dynamic>>.from(
          jsonData["tagvalue"])) {
        hotSearchWordsList.add(item["key"]!);
      }
      return HotSearch(sourceName: key, list: hotSearchWordsList);
    } catch (e) {
      rethrow;
    }
  }
}
