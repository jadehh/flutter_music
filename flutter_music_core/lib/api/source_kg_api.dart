/*
 * @File     : source_kw_api.dart
 * @Author   : jade
 * @Date     : 2024/12/16 14:48
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:convert';

import 'package:flutter_music_core/api/source_base_api.dart';
import 'package:flutter_music_core/event/event.dart';
import 'package:flutter_music_core/models/hot_search.dart';
import 'package:flutter_music_core/models/music_album.dart';
import 'package:flutter_music_core/utils/utils.dart';
import 'package:ok_http/ok_http.dart';

class SourceKGApi extends SourceBaseApi {
  Map<String,dynamic> get currentTagInfo => {"id": null, "info": null};
  String get key => "kg";
  List get sortList => [
     {"name": '推荐', "tid": 'recommend', "id": '5'},
     {"name": '最热', "tid": 'hot', "id": '6'},
     {"name": '最新', "tid": 'new', "id": '7'},
     {"name": '热藏', "tid": 'hot_collect', "id": '3'},
     {"name": '飙升', "tid": 'rise', "id": '8'}];


  String getSongListUrl(sortId, tagId, page) {
    if (tagId == null) tagId = '';
    return "http://www2.kugou.kugou.com/yueku/v9/special/getSpecial?is_ajax=1&cdn=cdn&t=${sortId}&c=${tagId}&p=${page}";
  }

  getInfoUrl(tagId) {
    return tagId ? "http://www2.kugou.kugou.com/yueku/v9/special/getSpecial?is_smarty=1&cdn=cdn&t=5&c=${tagId}": "http://www2.kugou.kugou.com/yueku/v9/special/getSpecial?is_smarty=1&";
  }

  getListInfo({tagId,tryNum=0}) async{
    if(tryNum > 2) throw ("try max num");
    final response = await OkHttp.instance.getJson(getInfoUrl(tagId));
    final body = jsonDecode(response.data);
    if (body["status"] != 1) return await getListInfo(tagId: tagId,tryNum: ++tryNum);
    return {
      "limit": body["params"]["pagesize"],
      "page": body["params"]["p"],
      "total": body["params"]["total"],
      "source": 'kg',
    };
  }



  getSongList({sortId, tagId, page, tryNum = 0}) async{
    if (tryNum > 2) throw ('try max num');
    final response = await OkHttp.instance.getJson(getSongListUrl(sortId,tagId,page));
    final body = jsonDecode(response.data);
    if (body["status"] != 1) return getSongList(sortId: sortId, tagId: tagId, page: page,tryNum:++tryNum);
    return filterList(body["special_db"]);
  }


  // 获取列表数据
  @override
  Future<List<MusicAlbum>> getList({sortId, tagId, page, tryNum=0}) async{

    List<MusicAlbum> list = await getSongList(sortId: sortId, tagId: tagId, page: page);
    final info = currentTagInfo["info"] == tagId ? currentTagInfo["info"] : await getListInfo(tagId: tagId);
    final recommend = tagId == null && page == 1 && sortId == this.sortList[0]["id"] ? await getSongListRecommend() :null; // 如果是所有类别，则顺便获取推荐列表
    if (recommend != null){
      list.insertAll(0, recommend);
    }
    return list;
  }

  getSongListRecommend({tryNum=0}) async{
    if(tryNum > 2) throw ("try max num");
    final response = await OkHttp.instance.req(
        'http://everydayrec.service.kugou.com/guess_special_recommend',
        {"method":'post',
        "headers":{ 'User-Agent': 'KuGou2012-8275-web_browser_event_handler',},
        "data":{"appid": 1001,"clienttime": 1566798337219,"clientver": 8275,"key": 'f1f93580115bb106680d2375f8032d96',"mid": '21511157a05844bd085308bc76ef3343',"platform": 'pc',"userid": '262643156',"return_min": 6,"return_max": 15
        }}
    );
    final body = response.data;
    if (body["status"] != 1) return await getSongListRecommend(tryNum:++tryNum);
    return this.filterList(body["data"]["special_list"]);
  }

  /*
  *   getSongListRecommend(tryNum = 0) {
    if (this._requestObj_listRecommend) this._requestObj_listRecommend.cancelHttp()
    if (tryNum > 2) return Promise.reject(new Error('try max num'))
    this._requestObj_listRecommend = httpFetch(
      'http://everydayrec.service.kugou.com/guess_special_recommend',
      {
        method: 'post',
        headers: {
          'User-Agent': 'KuGou2012-8275-web_browser_event_handler',
        },
        body: {
          appid: 1001,
          clienttime: 1566798337219,
          clientver: 8275,
          key: 'f1f93580115bb106680d2375f8032d96',
          mid: '21511157a05844bd085308bc76ef3343',
          platform: 'pc',
          userid: '262643156',
          return_min: 6,
          return_max: 15,
        },
      },
    )
    return this._requestObj_listRecommend.promise.then(({ body }) => {
      if (body.status !== 1) return this.getSongListRecommend(++tryNum)
      return this.filterList(body.data.special_list)
    })
  },
  * **/


  List<MusicAlbum> filterList(List<dynamic> rawData) {
    return rawData.map((item) =>_$MusicAlbumFromJson(item)).toList();
  }
  MusicAlbum _$MusicAlbumFromJson(Map<String, dynamic> json){
    return  MusicAlbum(
        playCount:(json["total_play_count"] ?? Utils.formatPlayCount(json["play_count"])).toString(),
        id: 'id_' + json["specialid"].toString(),
        author: json["nickname"],
        name: json["specialname"],
        time:  json["publish_time"] ?? json["publishtime"],
        total: json["song_count"].toString(),
        img: json["img"] ?? json["imgurl"],
        grade:  json["grade"].toString(),
        desc: json["intro"], source: key);
  }

  @override
  Future<HotSearch?> getHotSearch() async {
    // TODO: implement getHotSearch
    try {
      List<String> hotSearchWordsList = [];
      final _requestObj = await OkHttp.instance.getJson('http://gateway.kugou.com/api/v3/search/hot_tab?signature=ee44edb9d7155821412d220bcaf509dd&appid=1005&clientver=10026&plat=0',header: {"dfid": '1ssiv93oVqMp27cirf2CvoF1', "mid": '156798703528610303473757548878786007104', "clienttime": 1584257267, 'x-router': 'msearch.kugou.com', 'user-agent': 'Android9-AndroidPhone-10020-130-0-searchrecommendprotocol-wifi', 'kg-rc': 1,});
      final body = jsonDecode(_requestObj.data);
      if (_requestObj.statusCode != 200 || body["errcode"] != 0)  EventBus.instance.emit(EventBus.apiDialogEventName, "获取热搜词失败");
      final _rawDataList =  body["data"]["list"];
      for(var item in _rawDataList){
        for(var k in item["keywords"]){
          hotSearchWordsList.add(Utils.decodeName(str:k["keyword"]));
        }
      }
      return HotSearch(sourceName: key, list: hotSearchWordsList);
    } catch (e) {
      rethrow;
    }
  }



}