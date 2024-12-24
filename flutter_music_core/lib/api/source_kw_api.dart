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
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/utils/utils.dart';
import 'package:ok_http/ok_http.dart';

class SourceKWApi extends SourceBaseApi {
  static int successCode = 200;


  int get limitList => 36;

  String get key => "kw";

  static int limitSong = 1000;

  static get hotSearchApi => "http://hotword.kuwo.cn/hotword.s?prod=kwplayer_ar_9.3.0.1&corp=kuwo&newver=2&vipver=9.3.0.1&source=kwplayer_ar_9.3.0.1_40.apk&p2p=1&notrace=0&uid=0&plat=kwplayer_ar&rformat=json&encoding=utf8&tabid=1";

  static get hotSearchHeader => {"User-Agent": "Dalvik/2.1.0 (Linux; U; Android 9;)"};

  List get sortList => [{"name": '最新', "tid": 'new', "id": 'new'}, {"name": '最热', "tid": 'hot', "id": 'hot'}];

  static Map<String,String>  regExpInfo = {
  "mInfo": r"level:(\w+),bitrate:(\d+),format:(\w+),size:([\w.]+)",
  // http://www.kuwo.cn/playlist_detail/2886046289
  // https://m.kuwo.cn/h5app/playlist/2736267853?t=qqfriend
  "listDetailLink": r"^.+\/playlist(?:_detail)?\/(\d+)(?:\?.*|&.*$|#.*$|$)",
  };

  String getListUrl({sortId, id, type, page}) {
    if (id == null)
      return "http://wapi.kuwo.cn/api/pc/classify/playlist/getRcmPlayList?loginUid=0&loginSid=0&appUid=76039576&&pn=${page}&rn=${limitList}&order=${sortId}";
    switch (type) {
      case '10000':
        return "http://wapi.kuwo.cn/api/pc/classify/playlist/getTagPlayList?loginUid=0&loginSid=0&appUid=76039576&pn=${page}&id=${id}&rn=${limitList}";
      case '43':
        return "http://mobileinterfaces.kuwo.cn/er.s?type=get_pc_qz_data&f=web&id=${id}&prod=pc";
      default:
        return "";
    }
  }

  String getListDetailUrl(id, page) {
    // http://nplserver.kuwo.cn/pl.svc?op=getlistinfo&pid=2858093057&pn=0&rn=100&encode=utf8&keyset=pl2012&identity=kuwo&pcmp4=1&vipver=MUSIC_9.0.5.0_W1&newver=1
    return "http://nplserver.kuwo.cn/pl.svc?op=getlistinfo&pid=${id}&pn=${page - 1}&rn=${limitSong}&encode=utf8&keyset=pl2012&identity=kuwo&pcmp4=1&vipver=MUSIC_9.0.5.0_W1&newver=1";
    // http://mobileinterfaces.kuwo.cn/er.s?type=get_pc_qz_data&f=web&id=140&prod=pc
  }

  String getAlbumDetailUrl(id){
    return "http://mobilebasedata.kuwo.cn/basedata.s?type=get_songlist_info2&prod=kwplayer_ip_11.1.0.0&id=${id}&flagtype=null&aapiver=1&loginUid=599424006&uid=0&newuigroup=1";
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

  // 获取歌曲列表内的音乐
  Future<MusicAlbumDetail> getListDetail(String id, int page,{ retryNum = 0}) async {
    Log.d("id:${id}");
    // if (Utils.hasMatch(id, r"/\/bodian\//")) return getListDetailMusicListByBD(id,page);
    if (Utils.hasMatch(id, "/[?&:/]/")){
      id = id.replaceAll(RegExp(regExpInfo["listDetailLink"]!), "1");
      return MusicAlbumDetailNull();
    }
    else{
      final idSplitList = id.split('__');
      final digest = idSplitList[0].replaceAll("digest-", "");
      id = idSplitList[1];
      switch (digest) {
        case "8":
          break;
        case "13":
          return getAlbumListDetail(id,page,retryNum: retryNum);
        case "5":
        default:
          // return getListDetailDigest5(id, page, retryNum);
      }
      return await getListDetailDigest8(id, page, tryNum: retryNum);
    }
  }
  Future<MusicAlbumDetail> getListDetailDigest8(String id,int page,{tryNum = 0}) async{
    if (tryNum > 2) return throw('try max num');
    final requestObj = await OkHttp.instance.getJson(getListDetailUrl(id, page));
    if (requestObj.statusMessage!.toLowerCase() != "ok") return getListDetail(id, page,retryNum: ++tryNum);
    final detailRequestObj = await OkHttp.instance.getJson(getAlbumDetailUrl(id));
    if (detailRequestObj.statusMessage!.toLowerCase() != "ok") return getListDetail(id, page,retryNum: ++tryNum);
    return _$MusicAlbumDetailFromJson(detailRequestObj.data["sl_data"],jsonDecode(requestObj.data),page);
  }

  getAlbumListDetail(String id,int page,{retryNum = 0}){
    if (retryNum > 2) return throw('try max num');
    final requestObj_listDetail = OkHttp.instance.getJson("`http://search.kuwo.cn/r.s?pn=${page - 1}&rn=${limitSong}&stype=albuminfo&albumid=${id}&show_copyright_off=0&encoding=utf&vipver=MUSIC_9.1.0`");
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
  filterListDetail(List<dynamic> rawData){
    List<MusicDetail> list = [];
    for(var item in rawData){
      final infoArr = item["N_MINFO"].split(';');
      var types = [];
      Map<String,dynamic> _types = {};
      for (var info in infoArr) {
        Iterable<Match> matches = RegExp(regExpInfo["mInfo"]!).allMatches(info);
        if (matches.isNotEmpty) {
          switch (matches.first.group(2)) {
            case '4000':
              types.add({"type": 'flac24bit', "size": matches.first.group(4) });
              _types["flac24bit"] = {
                "size":matches.first.group(4)?.toUpperCase()
              };
              break;
            case '2000':
              types.add({"type": 'flac', "size": matches.first.group(4) });
              _types["flac"] = {
                "size": matches.first.group(4)?.toUpperCase(),
              };
              break;
            case '320':
              types.add({ "type": '320k', "size": matches.first.group(4) });
              _types['320k'] = {
                "size": matches.first.group(4)?.toUpperCase(),
              };
              break;
            case '128':
              types.add({ "type": '128k', "size": matches.first.group(4) });
              _types['128k'] = {
                "size": matches.first.group(4)?.toUpperCase(),
              };
              break;
          }
        }
      }
      list.add(MusicDetail(
          singer:Utils.formatSinger(Utils.decodeName(str:item["artist"])),
          name: Utils.decodeName(str:item["name"]),
          albumName: Utils.decodeName(str:item["album"]),
          albumId: item["albumid"],
          songId: item["id"],
          source: key,
          duration:int.parse(item["duration"]),
          interval: Utils.formatPlayTime(int.parse(item["duration"])),
          types: types.reversed.toList(),
          typesDic: _types));
    }
    return list;
  }

  @override
  Future<String> getMusicPicUrl(String songId) async {
    // TODO: implement getMusicPicUrl
    final requestObj = await OkHttp.instance.getJson("http://artistpicserver.kuwo.cn/pic.web?corp=kuwo&type=rid_pic&pictype=500&size=500&rid=${songId}");
    return requestObj.data;
  }

  MusicAlbumDetail _$MusicAlbumDetailFromJson(Map<String,dynamic>detail, Map<String, dynamic> body,int page){
    return MusicAlbumDetail(list:  this.filterListDetail(body["musiclist"]), page: page, limit: body["rn"], total: body["total"], source:key, info: AlbumDetailInfo(title: body["title"], pic: body["pic"], desc: body["info"], author: body["uname"], playNum: Utils.formatPlayCount(body["playnum"]),shareNum: int.parse(detail["share_num"]),commentNum: int.parse(detail["com_num"]),collectNum: int.parse(detail["ct"])));
  }

}
