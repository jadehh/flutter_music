// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  static String m0(num) => "将已选的 ${num} 首歌曲的位置调整到";

  static String m1(name) => "将 ${name} 的位置调整到";

  static String m2(name) => "这已经是 ${name} 的评论啦";

  static String m3(total) => "热门 ${total}";

  static String m4(total) => "最新 ${total}";

  static String m5(name, singer) => "${name} - ${singer} 的评论";

  static String m6(num) => "${num}小时前";

  static String m7(num) => "${num}分钟前";

  static String m8(num) => "${num}秒前";

  static String m9(message) => "调用失败：${message}";

  static String m10(name) => "你之前已收藏过该列表 [${name}]，是否需要更新里面的歌曲？";

  static String m11(name) => "把该歌曲添加到 ${name}";

  static String m12(importName, localName) =>
      "导入的列表（${importName}）与本地列表（${localName}）的ID相同，是否覆盖本地列表？";

  static String m13(value) => "共${value}首";

  static String m14(num) => "你真的想要移除所选的 ${num} 首歌曲吗？";

  static String m15(name) => "你真的想要移除 ${name} 吗？";

  static String m16(total, success, failed) =>
      "共发现 ${total} 首歌曲，成功添加 ${success} 首，失败 ${failed} 首，可到错误日志查看添加失败的歌曲";

  static String m17(Total) => "共发现 ${Total} 首歌曲，已全部添加！";

  static String m18(total) =>
      "共找到 ${total} 个符合要求的文件，已快速添加到当前列表，现在将进入文件标签读取流程，请勿退出应用！";

  static String m19(name) => "这将会把 ${name} 内的歌曲替换成在线列表的歌曲，你确认要更新吗？";

  static String m20(name) => "${name} 更新失败";

  static String m21(name) => "${name} 更新成功";

  static String m22(singer, name) => "你真的不喜欢 ${singer} 的 ${name} 吗？";

  static String m23(name) => "你真的不喜欢 ${name} 吗？";

  static String m24(location) => "来自${location}";

  static String m25(name) => "歌曲名：${name}";

  static String m26(msg) => "选择存储路径失败：${msg}";

  static String m27(time) => "服务器繁忙，${time}秒后重试...";

  static String m28(num) => "规则数量：${num}";

  static String m29(address) => "本机IP地址：${address}";

  static String m30(status) => "状态：${status}";

  static String m31(name) => "将 ${name} 分享到...";

  static String m32(name) => "艺术家：${name}";

  static String m33(name) => "选择与 ${name} 的不喜欢列表同步方式";

  static String m34(name) => "选择与 ${name} 的列表同步方式";

  static String m35(num) => "最多只能设置${num}分钟哦";

  static String m36(time) => "${time} 后停止播放";

  static String m37(name) => "自定义源 [${name}] 初始化失败：";

  static String m38(message) => "自定义源导入失败：\n${message}";

  static String m39(name) => "你真的要移除 ${name} 吗？";

  static String m40(name) => "自定义源 [${name}] 发现新版本";

  static String m41(current, total, progress) =>
      "正在努力下载中...${current}/${total} (${progress}%)";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_to": MessageLookupByLibrary.simpleMessage("添加到..."),
        "agree": MessageLookupByLibrary.simpleMessage("行行行"),
        "agree_go": MessageLookupByLibrary.simpleMessage("去开启"),
        "agree_to": MessageLookupByLibrary.simpleMessage("去设置"),
        "app_name": MessageLookupByLibrary.simpleMessage("Flutter Music"),
        "back": MessageLookupByLibrary.simpleMessage("返回"),
        "back_home": MessageLookupByLibrary.simpleMessage("返回桌面"),
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "cancel_button_text_2": MessageLookupByLibrary.simpleMessage("不不不，点错了"),
        "change_position": MessageLookupByLibrary.simpleMessage("调整位置"),
        "change_position_list_title":
            MessageLookupByLibrary.simpleMessage("调整列表位置"),
        "change_position_music_multi_title": m0,
        "change_position_music_title": m1,
        "change_position_tip": MessageLookupByLibrary.simpleMessage("请输入新的位置"),
        "close": MessageLookupByLibrary.simpleMessage("关闭"),
        "collect": MessageLookupByLibrary.simpleMessage("收藏"),
        "collect_songlist": MessageLookupByLibrary.simpleMessage("收藏歌单"),
        "collect_success": MessageLookupByLibrary.simpleMessage("收藏成功"),
        "collect_toplist": MessageLookupByLibrary.simpleMessage("收藏排行榜"),
        "comment_hide_text": MessageLookupByLibrary.simpleMessage("收起评论"),
        "comment_refresh": m2,
        "comment_show_image": MessageLookupByLibrary.simpleMessage("显示图片"),
        "comment_show_text": MessageLookupByLibrary.simpleMessage("展开评论"),
        "comment_tab_hot": m3,
        "comment_tab_new": m4,
        "comment_title": m5,
        "confirm": MessageLookupByLibrary.simpleMessage("确认"),
        "confirm_button_text": MessageLookupByLibrary.simpleMessage("是的"),
        "confirm_tip": MessageLookupByLibrary.simpleMessage("再确认一下，你真的要这样做吗？"),
        "copy_name": MessageLookupByLibrary.simpleMessage("分享歌曲"),
        "copy_name_tip": MessageLookupByLibrary.simpleMessage("已复制"),
        "create_new_folder": MessageLookupByLibrary.simpleMessage("新建文件夹"),
        "create_new_folder_error_tip":
            MessageLookupByLibrary.simpleMessage("输入的名称不合法"),
        "create_new_folder_tip":
            MessageLookupByLibrary.simpleMessage("请输入新文件夹名"),
        "date_format_hour": m6,
        "date_format_minute": m7,
        "date_format_second": m8,
        "deep_link__handle_error_tip": m9,
        "delete": MessageLookupByLibrary.simpleMessage("删除"),
        "dialog_cancel": MessageLookupByLibrary.simpleMessage("我不"),
        "dialog_confirm": MessageLookupByLibrary.simpleMessage("好的"),
        "disagree": MessageLookupByLibrary.simpleMessage("我就不"),
        "disagree_tip": MessageLookupByLibrary.simpleMessage("那算了... 🙄"),
        "dislike": MessageLookupByLibrary.simpleMessage("不喜欢"),
        "duplicate_list_tip": m10,
        "edit_metadata": MessageLookupByLibrary.simpleMessage("编辑标签"),
        "exit_app_tip": MessageLookupByLibrary.simpleMessage("确定要退出应用吗？"),
        "ignoring_battery_optimization_check_tip":
            MessageLookupByLibrary.simpleMessage(
                "LX Music没有在忽略电池优化的名单中，这可能会导致在后台播放音乐时被系统暂停的问题，是否将LX Music加入该白名单中？"),
        "ignoring_battery_optimization_check_title":
            MessageLookupByLibrary.simpleMessage("后台运行权限设置提醒"),
        "input_error": MessageLookupByLibrary.simpleMessage("不要乱输好吧😡"),
        "list_add_btn_title": m11,
        "list_add_tip_exists":
            MessageLookupByLibrary.simpleMessage("列表已经存在这首歌啦，不要再点我啦~😡"),
        "list_add_title_first_add": MessageLookupByLibrary.simpleMessage("添加"),
        "list_add_title_first_move": MessageLookupByLibrary.simpleMessage("移动"),
        "list_add_title_last": MessageLookupByLibrary.simpleMessage("到..."),
        "list_create": MessageLookupByLibrary.simpleMessage("新建列表"),
        "list_create_input_placeholder":
            MessageLookupByLibrary.simpleMessage("你想起啥名..."),
        "list_duplicate_tip":
            MessageLookupByLibrary.simpleMessage("已存在同名列表，是否继续创建？"),
        "list_edit_action_tip_add_failed":
            MessageLookupByLibrary.simpleMessage("添加失败"),
        "list_edit_action_tip_add_success":
            MessageLookupByLibrary.simpleMessage("添加成功"),
        "list_edit_action_tip_exist":
            MessageLookupByLibrary.simpleMessage("该列表已经有这首歌啦"),
        "list_edit_action_tip_move_failed":
            MessageLookupByLibrary.simpleMessage("移动失败"),
        "list_edit_action_tip_move_success":
            MessageLookupByLibrary.simpleMessage("移动成功"),
        "list_edit_action_tip_remove_success":
            MessageLookupByLibrary.simpleMessage("移除成功"),
        "list_end": MessageLookupByLibrary.simpleMessage("到底啦~"),
        "list_error": MessageLookupByLibrary.simpleMessage("加载失败😥，点击尝试重新加载"),
        "list_export": MessageLookupByLibrary.simpleMessage("导出"),
        "list_export_part_desc":
            MessageLookupByLibrary.simpleMessage("选择列表文件保存位置"),
        "list_import": MessageLookupByLibrary.simpleMessage("导入"),
        "list_import_part_button_cancel":
            MessageLookupByLibrary.simpleMessage("不要啊"),
        "list_import_part_button_confirm":
            MessageLookupByLibrary.simpleMessage("覆盖掉"),
        "list_import_part_confirm": m12,
        "list_import_part_desc": MessageLookupByLibrary.simpleMessage("选择列表文件"),
        "list_import_tip__alldata": MessageLookupByLibrary.simpleMessage(
            "这是一个所有数据备份文件，你需要去这里导入：\n设置 -> 备份与恢复 -> 列表数据 -> 导入列表"),
        "list_import_tip__failed": MessageLookupByLibrary.simpleMessage("导入失败"),
        "list_import_tip__playlist": MessageLookupByLibrary.simpleMessage(
            "这是一个列表备份文件，你需要去这里导入：\n设置 -> 备份与恢复 -> 列表数据 -> 导入列表"),
        "list_import_tip__playlist_part": MessageLookupByLibrary.simpleMessage(
            "这是一个单列表文件，你需要去这里导入：\n我的列表 -> 点击任意一个列表名右侧的菜单按钮 -> 在弹出的菜单中选择导入"),
        "list_import_tip__setting":
            MessageLookupByLibrary.simpleMessage("这是一个设置备份文件，移动端不支持导入此类文件"),
        "list_import_tip__unknown":
            MessageLookupByLibrary.simpleMessage("未知的文件类型，请尝试升级到最新版本后再试"),
        "list_loading": MessageLookupByLibrary.simpleMessage("加载中..."),
        "list_multi_add_title_first_add":
            MessageLookupByLibrary.simpleMessage("添加已选的"),
        "list_multi_add_title_first_move":
            MessageLookupByLibrary.simpleMessage("移动已选的"),
        "list_multi_add_title_last":
            MessageLookupByLibrary.simpleMessage("首歌曲到..."),
        "list_music_count_format": m13,
        "list_remove": MessageLookupByLibrary.simpleMessage("移除"),
        "list_remove_music_multi_tip": m14,
        "list_remove_tip": m15,
        "list_remove_tip_button": MessageLookupByLibrary.simpleMessage("是的 没错"),
        "list_rename": MessageLookupByLibrary.simpleMessage("重命名"),
        "list_rename_title": MessageLookupByLibrary.simpleMessage("重命名列表"),
        "list_select_all": MessageLookupByLibrary.simpleMessage("全选"),
        "list_select_cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "list_select_local_file":
            MessageLookupByLibrary.simpleMessage("添加本地歌曲"),
        "list_select_local_file_desc":
            MessageLookupByLibrary.simpleMessage("选择本地歌曲文件夹"),
        "list_select_local_file_empty_tip":
            MessageLookupByLibrary.simpleMessage("没有在当前目录中发现歌曲"),
        "list_select_local_file_result_failed_tip": m16,
        "list_select_local_file_result_tip": m17,
        "list_select_local_file_temp_add_tip": m18,
        "list_select_range": MessageLookupByLibrary.simpleMessage("区间"),
        "list_select_single": MessageLookupByLibrary.simpleMessage("单选"),
        "list_select_unall": MessageLookupByLibrary.simpleMessage("反选"),
        "list_sort": MessageLookupByLibrary.simpleMessage("排序歌曲"),
        "list_sort_modal_by_album": MessageLookupByLibrary.simpleMessage("专辑名"),
        "list_sort_modal_by_down": MessageLookupByLibrary.simpleMessage("降序"),
        "list_sort_modal_by_field":
            MessageLookupByLibrary.simpleMessage("排序字段"),
        "list_sort_modal_by_name": MessageLookupByLibrary.simpleMessage("歌曲名"),
        "list_sort_modal_by_random":
            MessageLookupByLibrary.simpleMessage("随机乱序"),
        "list_sort_modal_by_singer":
            MessageLookupByLibrary.simpleMessage("歌手名"),
        "list_sort_modal_by_source":
            MessageLookupByLibrary.simpleMessage("歌曲源"),
        "list_sort_modal_by_time": MessageLookupByLibrary.simpleMessage("时长"),
        "list_sort_modal_by_type": MessageLookupByLibrary.simpleMessage("排序类别"),
        "list_sort_modal_by_up": MessageLookupByLibrary.simpleMessage("升序"),
        "list_sync": MessageLookupByLibrary.simpleMessage("更新"),
        "list_sync_confirm_tip": m19,
        "list_temp": MessageLookupByLibrary.simpleMessage("临时列表"),
        "list_update_error": m20,
        "list_update_success": m21,
        "list_updating": MessageLookupByLibrary.simpleMessage("更新中"),
        "lists__duplicate": MessageLookupByLibrary.simpleMessage("重复歌曲"),
        "lists_dislike_music_add_tip":
            MessageLookupByLibrary.simpleMessage("已添加"),
        "lists_dislike_music_singer_tip": m22,
        "lists_dislike_music_tip": m23,
        "load_failed": MessageLookupByLibrary.simpleMessage("啊 加载失败了 😥"),
        "loading": MessageLookupByLibrary.simpleMessage("加载中..."),
        "location": m24,
        "lyric__load_error": MessageLookupByLibrary.simpleMessage("歌词获取失败"),
        "metadata_edit_modal_confirm":
            MessageLookupByLibrary.simpleMessage("保存"),
        "metadata_edit_modal_failed":
            MessageLookupByLibrary.simpleMessage("保存失败，详情可查看错误日志"),
        "metadata_edit_modal_file_name":
            MessageLookupByLibrary.simpleMessage("文件名"),
        "metadata_edit_modal_file_path":
            MessageLookupByLibrary.simpleMessage("文件路径"),
        "metadata_edit_modal_form_album_name":
            MessageLookupByLibrary.simpleMessage("专辑名"),
        "metadata_edit_modal_form_lyric":
            MessageLookupByLibrary.simpleMessage("LRC 歌词"),
        "metadata_edit_modal_form_match_lyric":
            MessageLookupByLibrary.simpleMessage("在线匹配"),
        "metadata_edit_modal_form_match_lyric_failed":
            MessageLookupByLibrary.simpleMessage("在线歌词匹配失败"),
        "metadata_edit_modal_form_match_lyric_success":
            MessageLookupByLibrary.simpleMessage("歌词匹配成功🎉"),
        "metadata_edit_modal_form_match_pic":
            MessageLookupByLibrary.simpleMessage("在线匹配"),
        "metadata_edit_modal_form_match_pic_failed":
            MessageLookupByLibrary.simpleMessage("在线匹配封面失败"),
        "metadata_edit_modal_form_match_pic_success":
            MessageLookupByLibrary.simpleMessage("封面匹配成功🎉"),
        "metadata_edit_modal_form_name":
            MessageLookupByLibrary.simpleMessage("歌曲名"),
        "metadata_edit_modal_form_parse_name":
            MessageLookupByLibrary.simpleMessage("从文件名解析歌曲名、艺术家"),
        "metadata_edit_modal_form_parse_name_singer":
            MessageLookupByLibrary.simpleMessage("歌曲名 - 艺术家"),
        "metadata_edit_modal_form_parse_singer_name":
            MessageLookupByLibrary.simpleMessage("艺术家 - 歌曲名"),
        "metadata_edit_modal_form_pic":
            MessageLookupByLibrary.simpleMessage("歌曲封面"),
        "metadata_edit_modal_form_remove_lyric":
            MessageLookupByLibrary.simpleMessage("清空"),
        "metadata_edit_modal_form_remove_pic":
            MessageLookupByLibrary.simpleMessage("移除图片"),
        "metadata_edit_modal_form_select_pic":
            MessageLookupByLibrary.simpleMessage("选择图片"),
        "metadata_edit_modal_form_select_pic_title":
            MessageLookupByLibrary.simpleMessage("选择歌曲封面图片"),
        "metadata_edit_modal_form_singer":
            MessageLookupByLibrary.simpleMessage("艺术家"),
        "metadata_edit_modal_processing":
            MessageLookupByLibrary.simpleMessage("写入中..."),
        "metadata_edit_modal_success":
            MessageLookupByLibrary.simpleMessage("保存成功"),
        "metadata_edit_modal_tip":
            MessageLookupByLibrary.simpleMessage("歌曲名不能为空"),
        "metadata_edit_modal_title":
            MessageLookupByLibrary.simpleMessage("编辑歌曲标签"),
        "move_to": MessageLookupByLibrary.simpleMessage("移动到..."),
        "music_source_detail": MessageLookupByLibrary.simpleMessage("歌曲详情页"),
        "name": m25,
        "nav_exit": MessageLookupByLibrary.simpleMessage("退出应用"),
        "nav_love": MessageLookupByLibrary.simpleMessage("我的收藏"),
        "nav_search": MessageLookupByLibrary.simpleMessage("搜索"),
        "nav_setting": MessageLookupByLibrary.simpleMessage("设置"),
        "nav_songlist": MessageLookupByLibrary.simpleMessage("歌单"),
        "nav_top": MessageLookupByLibrary.simpleMessage("排行榜"),
        "never_show": MessageLookupByLibrary.simpleMessage("不再提醒"),
        "no_item": MessageLookupByLibrary.simpleMessage("列表竟然是空的..."),
        "notifications_check_tip": MessageLookupByLibrary.simpleMessage(
            "你没有允许LX Music显示通知，或LX Music通知设置里的Music Service通知被禁用，这将无法使用通知栏进行暂停、切歌等操作，是否去开启？"),
        "notifications_check_title":
            MessageLookupByLibrary.simpleMessage("通知权限提醒"),
        "ok": MessageLookupByLibrary.simpleMessage("我知道了"),
        "open_storage_error_tip":
            MessageLookupByLibrary.simpleMessage("输入的路径不合法"),
        "open_storage_not_found_title":
            MessageLookupByLibrary.simpleMessage("未找到外置存储卡，请手动在下方输入路径以指定外置存储器"),
        "open_storage_select_managed_folder_failed_tip": m26,
        "open_storage_select_path":
            MessageLookupByLibrary.simpleMessage("打开存储路径"),
        "open_storage_select_path_tip": MessageLookupByLibrary.simpleMessage(
            "提示：对于外部存储，在授予存储权限后仍然无法访问时，可以点击下面的按钮选择允许访问的路径。"),
        "open_storage_tip": MessageLookupByLibrary.simpleMessage("输入存储路径"),
        "open_storage_title":
            MessageLookupByLibrary.simpleMessage("请手动在下方输入路径以指定外置存储器"),
        "parent_dir_name": MessageLookupByLibrary.simpleMessage("父级目录"),
        "pause": MessageLookupByLibrary.simpleMessage("暂停"),
        "play": MessageLookupByLibrary.simpleMessage("播放"),
        "play_all": MessageLookupByLibrary.simpleMessage("播放全部"),
        "play_detail_setting_lrc_align":
            MessageLookupByLibrary.simpleMessage("歌词对齐方式"),
        "play_detail_setting_lrc_align_center":
            MessageLookupByLibrary.simpleMessage("居中"),
        "play_detail_setting_lrc_align_left":
            MessageLookupByLibrary.simpleMessage("居左"),
        "play_detail_setting_lrc_align_right":
            MessageLookupByLibrary.simpleMessage("居右"),
        "play_detail_setting_lrc_font_size":
            MessageLookupByLibrary.simpleMessage("歌词字体大小"),
        "play_detail_setting_playback_rate":
            MessageLookupByLibrary.simpleMessage("播放速率"),
        "play_detail_setting_playback_rate_reset":
            MessageLookupByLibrary.simpleMessage("重置"),
        "play_detail_setting_show_lyric_progress_setting":
            MessageLookupByLibrary.simpleMessage("允许通过歌词调整播放进度"),
        "play_detail_setting_title":
            MessageLookupByLibrary.simpleMessage("播放器设置"),
        "play_detail_setting_volume":
            MessageLookupByLibrary.simpleMessage("音量大小"),
        "play_detail_todo_tip": MessageLookupByLibrary.simpleMessage(
            "你想干嘛？不可以的，这个功能还没有实现哦😛，不过你可以试着长按来定位当前播放的歌曲（仅对播放“我的列表”里的歌曲有效哦）"),
        "play_later": MessageLookupByLibrary.simpleMessage("稍后播放"),
        "play_list_loop": MessageLookupByLibrary.simpleMessage("列表循环播放"),
        "play_list_order": MessageLookupByLibrary.simpleMessage("顺序播放"),
        "play_list_random": MessageLookupByLibrary.simpleMessage("随机播放"),
        "play_next": MessageLookupByLibrary.simpleMessage("下一曲"),
        "play_prev": MessageLookupByLibrary.simpleMessage("上一曲"),
        "play_single": MessageLookupByLibrary.simpleMessage("禁用歌曲切换"),
        "play_single_loop": MessageLookupByLibrary.simpleMessage("单曲循环播放"),
        "player__buffering": MessageLookupByLibrary.simpleMessage("缓冲中..."),
        "player__end": MessageLookupByLibrary.simpleMessage("播放完毕"),
        "player__error":
            MessageLookupByLibrary.simpleMessage("音频加载出错，5 秒后切换下一首"),
        "player__geting_url":
            MessageLookupByLibrary.simpleMessage("歌曲链接获取中..."),
        "player__geting_url_delay_retry": m27,
        "player__loading": MessageLookupByLibrary.simpleMessage("音乐加载中..."),
        "player__refresh_url":
            MessageLookupByLibrary.simpleMessage("URL过期，正在刷新URL..."),
        "quality_high_quality": MessageLookupByLibrary.simpleMessage("HQ"),
        "quality_lossless": MessageLookupByLibrary.simpleMessage("SQ"),
        "quality_lossless_24bit": MessageLookupByLibrary.simpleMessage("Hires"),
        "search__welcome": MessageLookupByLibrary.simpleMessage("搜我所想~~😉"),
        "search_history_search": MessageLookupByLibrary.simpleMessage("历史搜索"),
        "search_hot_search": MessageLookupByLibrary.simpleMessage("热门搜索"),
        "search_type_music": MessageLookupByLibrary.simpleMessage("歌曲"),
        "search_type_songlist": MessageLookupByLibrary.simpleMessage("歌单"),
        "setting__other_dislike_list":
            MessageLookupByLibrary.simpleMessage("不喜欢的歌曲规则"),
        "setting__other_dislike_list_label": m28,
        "setting__other_dislike_list_saved_tip":
            MessageLookupByLibrary.simpleMessage("已保存"),
        "setting__other_lyric_raw_clear_btn":
            MessageLookupByLibrary.simpleMessage("清理歌词缓存"),
        "setting__other_lyric_raw_label":
            MessageLookupByLibrary.simpleMessage("歌词数量："),
        "setting__other_meta_cache":
            MessageLookupByLibrary.simpleMessage("其他缓存管理"),
        "setting__other_music_url_clear_btn":
            MessageLookupByLibrary.simpleMessage("清理歌曲URL缓存"),
        "setting__other_music_url_label":
            MessageLookupByLibrary.simpleMessage("歌曲URL数量："),
        "setting__other_other_source_clear_btn":
            MessageLookupByLibrary.simpleMessage("清理换源歌曲缓存"),
        "setting__other_other_source_label":
            MessageLookupByLibrary.simpleMessage("换源歌曲信息数量："),
        "setting__other_resource_cache":
            MessageLookupByLibrary.simpleMessage("资源缓存管理（包括歌曲、图片缓存）"),
        "setting_about": MessageLookupByLibrary.simpleMessage("关于洛雪音乐"),
        "setting_backup": MessageLookupByLibrary.simpleMessage("备份与恢复"),
        "setting_backup_all":
            MessageLookupByLibrary.simpleMessage("所有数据（列表数据与设置数据）"),
        "setting_backup_all_export": MessageLookupByLibrary.simpleMessage("导出"),
        "setting_backup_all_export_desc":
            MessageLookupByLibrary.simpleMessage("选择备份保存位置"),
        "setting_backup_all_import": MessageLookupByLibrary.simpleMessage("导入"),
        "setting_backup_all_import_desc":
            MessageLookupByLibrary.simpleMessage("选择备份文件"),
        "setting_backup_part":
            MessageLookupByLibrary.simpleMessage("列表数据（与PC端列表备份文件通用）"),
        "setting_backup_part_export_list":
            MessageLookupByLibrary.simpleMessage("导出列表"),
        "setting_backup_part_export_list_desc":
            MessageLookupByLibrary.simpleMessage("选择歌单备份文件保存位置"),
        "setting_backup_part_export_list_tip_failed":
            MessageLookupByLibrary.simpleMessage("歌单导出失败"),
        "setting_backup_part_export_list_tip_success":
            MessageLookupByLibrary.simpleMessage("导出成功"),
        "setting_backup_part_export_list_tip_zip":
            MessageLookupByLibrary.simpleMessage("📦文件打包中...\n若文件太大可能需要一些时间⏳"),
        "setting_backup_part_export_setting":
            MessageLookupByLibrary.simpleMessage("导出设置"),
        "setting_backup_part_export_setting_desc":
            MessageLookupByLibrary.simpleMessage("选择设置保存位置"),
        "setting_backup_part_import_list":
            MessageLookupByLibrary.simpleMessage("导入列表"),
        "setting_backup_part_import_list_desc":
            MessageLookupByLibrary.simpleMessage("选择列表备份文件"),
        "setting_backup_part_import_list_tip_error":
            MessageLookupByLibrary.simpleMessage("列表导入失败😕"),
        "setting_backup_part_import_list_tip_runing":
            MessageLookupByLibrary.simpleMessage(
                "🚀正在努力导入中...\n若列表太大可能需要ing一些时间⏳"),
        "setting_backup_part_import_list_tip_success":
            MessageLookupByLibrary.simpleMessage("导入成功🎉"),
        "setting_backup_part_import_list_tip_unzip":
            MessageLookupByLibrary.simpleMessage("📦文件解析中...\n若文件太大可能需要一些时间⏳"),
        "setting_backup_part_import_setting":
            MessageLookupByLibrary.simpleMessage("导入设置"),
        "setting_backup_part_import_setting_desc":
            MessageLookupByLibrary.simpleMessage("选择配置文件"),
        "setting_basic": MessageLookupByLibrary.simpleMessage("基本设置"),
        "setting_basic_always_keep_statusbar_height":
            MessageLookupByLibrary.simpleMessage("总是保留状态栏高度"),
        "setting_basic_always_keep_statusbar_height_tip":
            MessageLookupByLibrary.simpleMessage(
                "默认情况下，程序会动态判断是否需要为系统状态栏保留间距，但如果在你的设备上出现软件可交互内容与状态栏内容显示重叠的情况，可以启用该设置以始终为系统状态栏保留空间。"),
        "setting_basic_animation":
            MessageLookupByLibrary.simpleMessage("弹出层随机动画"),
        "setting_basic_auto_hide_play_bar":
            MessageLookupByLibrary.simpleMessage("弹出键盘时自动隐藏播放栏"),
        "setting_basic_drawer_layout_position":
            MessageLookupByLibrary.simpleMessage("导航、收藏列表弹出方向"),
        "setting_basic_drawer_layout_position_left":
            MessageLookupByLibrary.simpleMessage("左侧"),
        "setting_basic_drawer_layout_position_right":
            MessageLookupByLibrary.simpleMessage("右侧"),
        "setting_basic_font_size":
            MessageLookupByLibrary.simpleMessage("字体大小设置 [重启后生效]"),
        "setting_basic_font_size_100":
            MessageLookupByLibrary.simpleMessage("标准"),
        "setting_basic_font_size_110":
            MessageLookupByLibrary.simpleMessage("大"),
        "setting_basic_font_size_120":
            MessageLookupByLibrary.simpleMessage("较大"),
        "setting_basic_font_size_130":
            MessageLookupByLibrary.simpleMessage("非常大"),
        "setting_basic_font_size_80":
            MessageLookupByLibrary.simpleMessage("较小"),
        "setting_basic_font_size_90": MessageLookupByLibrary.simpleMessage("小"),
        "setting_basic_font_size_preview":
            MessageLookupByLibrary.simpleMessage("LX Music 字体大小预览"),
        "setting_basic_home_page_scroll":
            MessageLookupByLibrary.simpleMessage("启用竖屏首页横向滚动"),
        "setting_basic_lang": MessageLookupByLibrary.simpleMessage("语言"),
        "setting_basic_lang_system":
            MessageLookupByLibrary.simpleMessage("跟随系统"),
        "setting_basic_share_type":
            MessageLookupByLibrary.simpleMessage("分享方式"),
        "setting_basic_share_type_clipboard":
            MessageLookupByLibrary.simpleMessage("复制到剪贴板"),
        "setting_basic_share_type_system":
            MessageLookupByLibrary.simpleMessage("使用系统分享"),
        "setting_basic_show_animation":
            MessageLookupByLibrary.simpleMessage("显示切换动画"),
        "setting_basic_show_back_btn":
            MessageLookupByLibrary.simpleMessage("显示返回桌面按钮"),
        "setting_basic_show_exit_btn":
            MessageLookupByLibrary.simpleMessage("显示退出应用按钮"),
        "setting_basic_source": MessageLookupByLibrary.simpleMessage("音乐来源"),
        "setting_basic_source_direct":
            MessageLookupByLibrary.simpleMessage("试听接口（这是最后的选择...）"),
        "setting_basic_source_status_failed":
            MessageLookupByLibrary.simpleMessage("初始化失败"),
        "setting_basic_source_status_initing":
            MessageLookupByLibrary.simpleMessage("初始化中"),
        "setting_basic_source_status_success":
            MessageLookupByLibrary.simpleMessage("初始化成功"),
        "setting_basic_source_temp": MessageLookupByLibrary.simpleMessage(
            "临时接口（软件的某些功能不可用，建议测试接口不可用再使用本接口）"),
        "setting_basic_source_test":
            MessageLookupByLibrary.simpleMessage("测试接口（几乎软件的所有功能都可用）"),
        "setting_basic_source_title":
            MessageLookupByLibrary.simpleMessage("选择音乐来源"),
        "setting_basic_source_user_api_btn":
            MessageLookupByLibrary.simpleMessage("自定义源管理"),
        "setting_basic_sourcename":
            MessageLookupByLibrary.simpleMessage("音源名字"),
        "setting_basic_sourcename_alias":
            MessageLookupByLibrary.simpleMessage("别名"),
        "setting_basic_sourcename_real":
            MessageLookupByLibrary.simpleMessage("原名"),
        "setting_basic_sourcename_title":
            MessageLookupByLibrary.simpleMessage("选择音源名字类型"),
        "setting_basic_startup_auto_play":
            MessageLookupByLibrary.simpleMessage("启动后自动播放音乐"),
        "setting_basic_startup_push_play_detail_screen":
            MessageLookupByLibrary.simpleMessage("启动后打开播放详情界面"),
        "setting_basic_theme": MessageLookupByLibrary.simpleMessage("主题颜色"),
        "setting_basic_theme_auto_theme":
            MessageLookupByLibrary.simpleMessage("跟随系统亮、暗模式切换主题"),
        "setting_basic_theme_dark":
            MessageLookupByLibrary.simpleMessage("深色模式"),
        "setting_basic_theme_dynamic_bg":
            MessageLookupByLibrary.simpleMessage("使用动态背景"),
        "setting_basic_theme_follow_system":
            MessageLookupByLibrary.simpleMessage("跟随系统"),
        "setting_basic_theme_font_shadow":
            MessageLookupByLibrary.simpleMessage("启用字体阴影"),
        "setting_basic_theme_hide_bg_dark":
            MessageLookupByLibrary.simpleMessage("隐藏黑色主题背景"),
        "setting_basic_theme_light":
            MessageLookupByLibrary.simpleMessage("浅色模式"),
        "setting_basic_theme_mode":
            MessageLookupByLibrary.simpleMessage("主题模式"),
        "setting_basic_theme_more_btn_show":
            MessageLookupByLibrary.simpleMessage("更多主题"),
        "setting_basic_use_system_file_selector":
            MessageLookupByLibrary.simpleMessage("使用系统文件选择器"),
        "setting_basic_use_system_file_selector_tip":
            MessageLookupByLibrary.simpleMessage(
                "启用该选项后，导入备份文件、自定义源等操作将不需要申请存储权限，但可能在某些系统上不可用。\n若启用该设置后无法导入文件，则可关闭该设置，回退到软件内置文件选择器。"),
        "setting_dislike_list_input_tip":
            MessageLookupByLibrary.simpleMessage("歌曲名@歌手名\n歌曲名\n@歌手名"),
        "setting_dislike_list_tips": MessageLookupByLibrary.simpleMessage(
            "1. 每条一行，若歌曲或者歌手名字中存在“@”符号，需要将其替换成“#”\n2. 指定某歌手的某首歌：歌曲名@歌手名\n3. 指定某首歌：歌曲名\n4. 指定某歌手：@歌手名"),
        "setting_list": MessageLookupByLibrary.simpleMessage("列表设置"),
        "setting_list_add_music_location_type":
            MessageLookupByLibrary.simpleMessage("添加歌曲到列表时的位置"),
        "setting_list_add_music_location_type_bottom":
            MessageLookupByLibrary.simpleMessage("底部"),
        "setting_list_add_music_location_type_top":
            MessageLookupByLibrary.simpleMessage("顶部"),
        "setting_list_click_action": MessageLookupByLibrary.simpleMessage(
            "点击列表里的歌曲时自动切换到当前列表播放（仅对歌单、排行榜有效）"),
        "setting_list_show_album_name":
            MessageLookupByLibrary.simpleMessage("显示歌曲专辑名"),
        "setting_lyric_dektop_permission_tip":
            MessageLookupByLibrary.simpleMessage(
                "桌面歌词功能需要在系统权限设置中授予LX Music显示悬浮窗口的权限才能使用，是否去相关界面授予此权限？"),
        "setting_lyric_desktop": MessageLookupByLibrary.simpleMessage("桌面歌词"),
        "setting_lyric_desktop_enable":
            MessageLookupByLibrary.simpleMessage("显示桌面歌词"),
        "setting_lyric_desktop_lock":
            MessageLookupByLibrary.simpleMessage("锁定歌词"),
        "setting_lyric_desktop_maxlineNum":
            MessageLookupByLibrary.simpleMessage("最大行数"),
        "setting_lyric_desktop_single_line":
            MessageLookupByLibrary.simpleMessage("使用单行歌词"),
        "setting_lyric_desktop_text_opacity":
            MessageLookupByLibrary.simpleMessage("歌词字体透明度"),
        "setting_lyric_desktop_text_size":
            MessageLookupByLibrary.simpleMessage("歌词字体大小"),
        "setting_lyric_desktop_text_x":
            MessageLookupByLibrary.simpleMessage("歌词水平对齐方式"),
        "setting_lyric_desktop_text_x_center":
            MessageLookupByLibrary.simpleMessage("居中"),
        "setting_lyric_desktop_text_x_left":
            MessageLookupByLibrary.simpleMessage("居左"),
        "setting_lyric_desktop_text_x_right":
            MessageLookupByLibrary.simpleMessage("居右"),
        "setting_lyric_desktop_text_y":
            MessageLookupByLibrary.simpleMessage("歌词垂直对齐方式"),
        "setting_lyric_desktop_text_y_bottom":
            MessageLookupByLibrary.simpleMessage("居底"),
        "setting_lyric_desktop_text_y_center":
            MessageLookupByLibrary.simpleMessage("居中"),
        "setting_lyric_desktop_text_y_top":
            MessageLookupByLibrary.simpleMessage("居顶"),
        "setting_lyric_desktop_theme":
            MessageLookupByLibrary.simpleMessage("歌词主题色"),
        "setting_lyric_desktop_toggle_anima":
            MessageLookupByLibrary.simpleMessage("显示歌词切换动画"),
        "setting_lyric_desktop_view_width":
            MessageLookupByLibrary.simpleMessage("窗口百分比宽度"),
        "setting_other": MessageLookupByLibrary.simpleMessage("其他"),
        "setting_other_cache": MessageLookupByLibrary.simpleMessage(
            "缓存管理（包括歌曲、歌词、错误日志等缓存，没有歌曲播放相关的问题不建议清理）"),
        "setting_other_cache_clear_btn":
            MessageLookupByLibrary.simpleMessage("清理缓存"),
        "setting_other_cache_clear_success_tip":
            MessageLookupByLibrary.simpleMessage("缓存清理完成"),
        "setting_other_cache_getting":
            MessageLookupByLibrary.simpleMessage("统计缓存中..."),
        "setting_other_cache_size":
            MessageLookupByLibrary.simpleMessage("当前已用缓存大小："),
        "setting_other_dislike_list_show_btn":
            MessageLookupByLibrary.simpleMessage("编辑不喜欢歌曲规则"),
        "setting_other_log":
            MessageLookupByLibrary.simpleMessage("错误日志（运行发生异常时的日志）"),
        "setting_other_log_btn_clean":
            MessageLookupByLibrary.simpleMessage("清空"),
        "setting_other_log_btn_hide":
            MessageLookupByLibrary.simpleMessage("关闭"),
        "setting_other_log_btn_show":
            MessageLookupByLibrary.simpleMessage("查看日志"),
        "setting_other_log_sync_log":
            MessageLookupByLibrary.simpleMessage("记录同步日志"),
        "setting_other_log_tip_clean_success":
            MessageLookupByLibrary.simpleMessage("日志清理完成"),
        "setting_other_log_tip_null":
            MessageLookupByLibrary.simpleMessage("日志是空的哦~"),
        "setting_other_log_user_api_log":
            MessageLookupByLibrary.simpleMessage("记录自定义源日志"),
        "setting_play_audio_offload":
            MessageLookupByLibrary.simpleMessage("启用音频卸载"),
        "setting_play_audio_offload_tip": MessageLookupByLibrary.simpleMessage(
            "启用音频卸载可以节省耗电量，但在某些设备上可能会出现所有歌曲都提示 「音频加载出错」 或者 「无法完整播放整首歌」 的问题，这是由于当前系统的bug导致的。\n对于遇到这个问题的人可以关闭此选项后完全重启应用再试。"),
        "setting_play_auto_clean_played_list":
            MessageLookupByLibrary.simpleMessage("自动清空已播放列表"),
        "setting_play_auto_clean_played_list_tip":
            MessageLookupByLibrary.simpleMessage(
                "随机播放模式下，通过 「点击」 与 「播放列表相同的列表内的歌曲」 切歌时，若启用 「自动清空已播放列表」，则已播放的歌曲将重新参与随机播放。"),
        "setting_play_cache_size":
            MessageLookupByLibrary.simpleMessage("最大缓存大小（MB）"),
        "setting_play_cache_size_no_cache":
            MessageLookupByLibrary.simpleMessage("禁用缓存"),
        "setting_play_cache_size_save_tip":
            MessageLookupByLibrary.simpleMessage("缓存设置完毕，重启应用后生效"),
        "setting_play_handle_audio_focus":
            MessageLookupByLibrary.simpleMessage("其他应用播放声音时，自动暂停播放"),
        "setting_play_handle_audio_focus_tip":
            MessageLookupByLibrary.simpleMessage("重启应用后生效"),
        "setting_play_lyric_transition":
            MessageLookupByLibrary.simpleMessage("显示歌词翻译"),
        "setting_play_play_quality":
            MessageLookupByLibrary.simpleMessage("优先播放的音质（如果支持）"),
        "setting_play_s2t": MessageLookupByLibrary.simpleMessage("将播放的歌词转繁体"),
        "setting_play_save_play_time":
            MessageLookupByLibrary.simpleMessage("记住播放进度"),
        "setting_play_show_notification_image":
            MessageLookupByLibrary.simpleMessage("在通知栏显示歌曲图片"),
        "setting_play_show_roma":
            MessageLookupByLibrary.simpleMessage("显示歌词罗马音（如果可用）"),
        "setting_play_show_translation":
            MessageLookupByLibrary.simpleMessage("显示歌词翻译（如果可用）"),
        "setting_player": MessageLookupByLibrary.simpleMessage("播放设置"),
        "setting_player_save_play_time":
            MessageLookupByLibrary.simpleMessage("记住播放进度"),
        "setting_search": MessageLookupByLibrary.simpleMessage("搜索设置"),
        "setting_search_show_history_search":
            MessageLookupByLibrary.simpleMessage("显示历史搜索记录"),
        "setting_search_show_hot_search":
            MessageLookupByLibrary.simpleMessage("显示热门搜索"),
        "setting_sync": MessageLookupByLibrary.simpleMessage("数据同步"),
        "setting_sync_address": m29,
        "setting_sync_code_blocked_ip":
            MessageLookupByLibrary.simpleMessage("当前设备的IP已被服务端封禁！"),
        "setting_sync_code_fail": MessageLookupByLibrary.simpleMessage("连接码无效"),
        "setting_sync_code_input_tip":
            MessageLookupByLibrary.simpleMessage("请输入连接码"),
        "setting_sync_code_label":
            MessageLookupByLibrary.simpleMessage("首次连接需要输入连接码"),
        "setting_sync_enbale": MessageLookupByLibrary.simpleMessage("启用同步"),
        "setting_sync_history": MessageLookupByLibrary.simpleMessage("历史地址"),
        "setting_sync_history_empty":
            MessageLookupByLibrary.simpleMessage("这里啥也没有😮"),
        "setting_sync_history_title":
            MessageLookupByLibrary.simpleMessage("连接历史"),
        "setting_sync_host_label":
            MessageLookupByLibrary.simpleMessage("同步服务地址"),
        "setting_sync_host_value_error_tip":
            MessageLookupByLibrary.simpleMessage(
                "地址需要以 http:// 或者 https:// 开头！"),
        "setting_sync_host_value_tip":
            MessageLookupByLibrary.simpleMessage("http://IP地址:端口号"),
        "setting_sync_port_label":
            MessageLookupByLibrary.simpleMessage("同步服务端口号"),
        "setting_sync_port_tip":
            MessageLookupByLibrary.simpleMessage("请输入同步服务端口号"),
        "setting_sync_status": m30,
        "setting_sync_status_enabled":
            MessageLookupByLibrary.simpleMessage("已连接"),
        "setting_theme": MessageLookupByLibrary.simpleMessage("主题设置"),
        "setting_version": MessageLookupByLibrary.simpleMessage("软件更新"),
        "setting_version_show_ver_modal":
            MessageLookupByLibrary.simpleMessage("打开更新窗口 🚀"),
        "share_card_title_music": m31,
        "share_title_music": MessageLookupByLibrary.simpleMessage("歌曲分享"),
        "singer": m32,
        "songlist_hot": MessageLookupByLibrary.simpleMessage("最热"),
        "songlist_hot_collect": MessageLookupByLibrary.simpleMessage("热藏"),
        "songlist_new": MessageLookupByLibrary.simpleMessage("最新"),
        "songlist_open": MessageLookupByLibrary.simpleMessage("导入"),
        "songlist_open_input_placeholder":
            MessageLookupByLibrary.simpleMessage("输入歌单链接或歌单ID"),
        "songlist_open_input_tip": MessageLookupByLibrary.simpleMessage(
            "1、不支持跨源打开歌单，请确认要打开的歌单与当前歌单源是否对应\n2、若遇到无法打开的歌单链接，欢迎反馈\n3、酷狗源不支持用歌单ID打开，但支持酷狗码打开"),
        "songlist_recommend": MessageLookupByLibrary.simpleMessage("推荐"),
        "songlist_rise": MessageLookupByLibrary.simpleMessage("飙升"),
        "songlist_tag_default": MessageLookupByLibrary.simpleMessage("默认"),
        "songlist_tag_hot": MessageLookupByLibrary.simpleMessage("热门"),
        "songlist_tags": MessageLookupByLibrary.simpleMessage("歌单类别"),
        "source_alias_all": MessageLookupByLibrary.simpleMessage("聚合大会"),
        "source_alias_bd": MessageLookupByLibrary.simpleMessage("小杜音乐"),
        "source_alias_kg": MessageLookupByLibrary.simpleMessage("小枸音乐"),
        "source_alias_kw": MessageLookupByLibrary.simpleMessage("小蜗音乐"),
        "source_alias_mg": MessageLookupByLibrary.simpleMessage("小蜜音乐"),
        "source_alias_tx": MessageLookupByLibrary.simpleMessage("小秋音乐"),
        "source_alias_wy": MessageLookupByLibrary.simpleMessage("小芸音乐"),
        "source_real_all": MessageLookupByLibrary.simpleMessage("聚合搜索"),
        "source_real_bd": MessageLookupByLibrary.simpleMessage("百度音乐"),
        "source_real_kg": MessageLookupByLibrary.simpleMessage("酷狗音乐"),
        "source_real_kw": MessageLookupByLibrary.simpleMessage("酷我音乐"),
        "source_real_mg": MessageLookupByLibrary.simpleMessage("咪咕音乐"),
        "source_real_tx": MessageLookupByLibrary.simpleMessage("企鹅音乐"),
        "source_real_wy": MessageLookupByLibrary.simpleMessage("网易音乐"),
        "stop": MessageLookupByLibrary.simpleMessage("停止"),
        "stopped": MessageLookupByLibrary.simpleMessage("已停止"),
        "storage_file_no_match":
            MessageLookupByLibrary.simpleMessage("选择的文件不符合要求！"),
        "storage_file_no_select_file_failed_tip":
            MessageLookupByLibrary.simpleMessage(
                "使用系统文件选择器选择文件失败，是否回退到软件内置文件选择器？"),
        "storage_permission_tip_disagree":
            MessageLookupByLibrary.simpleMessage("你个骗纸，刚刚问你，你都说同意的，最后又拒绝，哼 🥺"),
        "storage_permission_tip_disagree_ask_again":
            MessageLookupByLibrary.simpleMessage(
                "此功能无法使用，因为你已经永久拒绝洛雪访问手机存储😫。\n若想继续，你需要去👉系统权限管理👈将洛雪的存储权限设置为允许"),
        "storage_permission_tip_request":
            MessageLookupByLibrary.simpleMessage("使用此功能需要允许洛雪访问手机存储，是否同意并继续？"),
        "sync__dislike_mode_merge_tip_desc":
            MessageLookupByLibrary.simpleMessage("合并两边列表内容并去重"),
        "sync__dislike_mode_other_tip_desc":
            MessageLookupByLibrary.simpleMessage("“取消同步”将不使用不喜欢列表同步功能"),
        "sync__dislike_mode_overwrite_tip_desc":
            MessageLookupByLibrary.simpleMessage("被覆盖者的列表将被替换成覆盖者的列表"),
        "sync__dislike_mode_title": m33,
        "sync__list_mode_merge_tip_desc": MessageLookupByLibrary.simpleMessage(
            "将两边的列表合并到一起，相同的歌曲将被去掉（去掉的是被合并者的歌曲），不同的歌曲将被添加。"),
        "sync__list_mode_other_tip_desc":
            MessageLookupByLibrary.simpleMessage("“取消同步”将不使用列表同步功能。"),
        "sync__list_mode_overwrite_tip_desc": MessageLookupByLibrary.simpleMessage(
            "被覆盖者与覆盖者列表ID相同的列表将被删除后替换成覆盖者的列表（列表ID不同的列表将被合并到一起），若勾选完全覆盖，则被覆盖者的所有列表将被移除，然后替换成覆盖者的列表。"),
        "sync__list_mode_title": m34,
        "sync__mode_merge_btn_local_remote":
            MessageLookupByLibrary.simpleMessage("本机列表 合并 远程列表"),
        "sync__mode_merge_btn_remote_local":
            MessageLookupByLibrary.simpleMessage("远程列表 合并 本机列表"),
        "sync__mode_merge_tip": MessageLookupByLibrary.simpleMessage("合并: "),
        "sync__mode_other_label": MessageLookupByLibrary.simpleMessage("其他"),
        "sync__mode_other_tip": MessageLookupByLibrary.simpleMessage("其他: "),
        "sync__mode_overwrite": MessageLookupByLibrary.simpleMessage("完全覆盖"),
        "sync__mode_overwrite_btn_cancel":
            MessageLookupByLibrary.simpleMessage("取消同步"),
        "sync__mode_overwrite_btn_local_remote":
            MessageLookupByLibrary.simpleMessage("本机列表 覆盖 远程列表"),
        "sync__mode_overwrite_btn_remote_local":
            MessageLookupByLibrary.simpleMessage("远程列表 覆盖 本机列表"),
        "sync__mode_overwrite_label":
            MessageLookupByLibrary.simpleMessage("覆盖"),
        "sync__mode_overwrite_tip":
            MessageLookupByLibrary.simpleMessage("覆盖: "),
        "sync_status_disabled": MessageLookupByLibrary.simpleMessage("未连接"),
        "theme_black": MessageLookupByLibrary.simpleMessage("黑灯瞎火"),
        "theme_blue": MessageLookupByLibrary.simpleMessage("蓝田生玉"),
        "theme_blue2": MessageLookupByLibrary.simpleMessage("清热版蓝"),
        "theme_blue_plus": MessageLookupByLibrary.simpleMessage("蛋雅深蓝"),
        "theme_brown": MessageLookupByLibrary.simpleMessage("泥牛入海"),
        "theme_china_ink": MessageLookupByLibrary.simpleMessage("近墨者黑"),
        "theme_green": MessageLookupByLibrary.simpleMessage("绿意盎然"),
        "theme_grey": MessageLookupByLibrary.simpleMessage("灰常美丽"),
        "theme_happy_new_year": MessageLookupByLibrary.simpleMessage("新年快乐"),
        "theme_mid_autumn": MessageLookupByLibrary.simpleMessage("月里嫦娥"),
        "theme_ming": MessageLookupByLibrary.simpleMessage("青出于黑"),
        "theme_naruto": MessageLookupByLibrary.simpleMessage("木叶之村"),
        "theme_orange": MessageLookupByLibrary.simpleMessage("橙黄橘绿"),
        "theme_pink": MessageLookupByLibrary.simpleMessage("粉装玉琢"),
        "theme_purple": MessageLookupByLibrary.simpleMessage("重斤球紫"),
        "theme_red": MessageLookupByLibrary.simpleMessage("热情似火"),
        "timeout_exit_btn_cancel": MessageLookupByLibrary.simpleMessage("取消定时"),
        "timeout_exit_btn_update": MessageLookupByLibrary.simpleMessage("更新定时"),
        "timeout_exit_btn_wait_cancel":
            MessageLookupByLibrary.simpleMessage("取消退出"),
        "timeout_exit_btn_wait_tip":
            MessageLookupByLibrary.simpleMessage("计时已结束，正在等待退出..."),
        "timeout_exit_input_tip":
            MessageLookupByLibrary.simpleMessage("输入倒计时分钟数"),
        "timeout_exit_label_isPlayed":
            MessageLookupByLibrary.simpleMessage("等待歌曲播放完毕再停止播放"),
        "timeout_exit_min": MessageLookupByLibrary.simpleMessage("分钟"),
        "timeout_exit_tip_cancel":
            MessageLookupByLibrary.simpleMessage("已取消定时停止播放"),
        "timeout_exit_tip_max": m35,
        "timeout_exit_tip_off":
            MessageLookupByLibrary.simpleMessage("设置定时停止播放"),
        "timeout_exit_tip_on": m36,
        "toggle_source": MessageLookupByLibrary.simpleMessage("歌曲换源"),
        "toggle_source_failed":
            MessageLookupByLibrary.simpleMessage("换源失败，请尝试手动在其他源搜索该歌曲播放"),
        "toggle_source_try":
            MessageLookupByLibrary.simpleMessage("尝试切换到其他源..."),
        "understand": MessageLookupByLibrary.simpleMessage("已了解 👌"),
        "user_api__init_failed_alert": m37,
        "user_api_add_failed_tip":
            MessageLookupByLibrary.simpleMessage("无效的自定义源文件"),
        "user_api_allow_show_update_alert":
            MessageLookupByLibrary.simpleMessage("允许显示更新弹窗"),
        "user_api_btn_import": MessageLookupByLibrary.simpleMessage("导入"),
        "user_api_btn_import_local":
            MessageLookupByLibrary.simpleMessage("本地导入"),
        "user_api_btn_import_online":
            MessageLookupByLibrary.simpleMessage("在线导入"),
        "user_api_btn_import_online_input_confirm":
            MessageLookupByLibrary.simpleMessage("导入"),
        "user_api_btn_import_online_input_loading":
            MessageLookupByLibrary.simpleMessage("导入中..."),
        "user_api_btn_import_online_input_tip":
            MessageLookupByLibrary.simpleMessage("请输入 HTTP 链接"),
        "user_api_empty": MessageLookupByLibrary.simpleMessage("这里竟然是空的 😲"),
        "user_api_import_desc":
            MessageLookupByLibrary.simpleMessage("选择自定义源文件"),
        "user_api_import_failed_tip": m38,
        "user_api_import_success_tip":
            MessageLookupByLibrary.simpleMessage("导入成功 🎉"),
        "user_api_max_tip": MessageLookupByLibrary.simpleMessage(
            "最多只能同时存在20个源哦🤪\n想要继续导入的话，请先移除一些旧的源腾出位置吧"),
        "user_api_note": MessageLookupByLibrary.simpleMessage(
            "提示：虽然我们已经尽可能地隔离了脚本的运行环境，但导入包含恶意行为的脚本仍可能会影响你的系统，请谨慎导入。"),
        "user_api_readme": MessageLookupByLibrary.simpleMessage("源编写说明："),
        "user_api_remove_tip": m39,
        "user_api_title": MessageLookupByLibrary.simpleMessage("自定义源管理（实验性）"),
        "user_api_update_alert": m40,
        "user_api_update_alert_open_url":
            MessageLookupByLibrary.simpleMessage("打开更新地址"),
        "version_btn_close": MessageLookupByLibrary.simpleMessage("关闭"),
        "version_btn_downloading": m41,
        "version_btn_failed": MessageLookupByLibrary.simpleMessage("重试"),
        "version_btn_ignore": MessageLookupByLibrary.simpleMessage("忽略"),
        "version_btn_ignore_cancel":
            MessageLookupByLibrary.simpleMessage("取消忽略"),
        "version_btn_min": MessageLookupByLibrary.simpleMessage("后台下载"),
        "version_btn_new": MessageLookupByLibrary.simpleMessage("更新"),
        "version_btn_unknown": MessageLookupByLibrary.simpleMessage("项目首页"),
        "version_btn_update": MessageLookupByLibrary.simpleMessage("安装"),
        "version_label_change_log":
            MessageLookupByLibrary.simpleMessage("更新说明："),
        "version_label_current_ver":
            MessageLookupByLibrary.simpleMessage("当前版本："),
        "version_label_history": MessageLookupByLibrary.simpleMessage("历史版本："),
        "version_label_latest_ver":
            MessageLookupByLibrary.simpleMessage("最新版本："),
        "version_tip_checking":
            MessageLookupByLibrary.simpleMessage("检查更新中...⏳"),
        "version_tip_downloaded":
            MessageLookupByLibrary.simpleMessage("安装包已经下载完毕。"),
        "version_tip_failed": MessageLookupByLibrary.simpleMessage(
            "安装包下载失败，你可以重试或者去项目地址手动下载新版更新。\n💡提示：一般多点几次重试即可正常更新！"),
        "version_tip_latest":
            MessageLookupByLibrary.simpleMessage("软件已是最新，尽情地体验吧~🥂"),
        "version_tip_min": MessageLookupByLibrary.simpleMessage(
            "已切换到后台下载，你可以去 设置-软件更新 重新打开本弹窗哦"),
        "version_tip_unknown": MessageLookupByLibrary.simpleMessage(
            "获取最新版本信息失败，建议手动去项目地址检查是否有新版本"),
        "version_title_checking":
            MessageLookupByLibrary.simpleMessage("⏳ 检查更新中 ⏳"),
        "version_title_failed":
            MessageLookupByLibrary.simpleMessage("❌ 下载失败 ❌"),
        "version_title_latest":
            MessageLookupByLibrary.simpleMessage("🎉 当前版本已是最新 🎊"),
        "version_title_new":
            MessageLookupByLibrary.simpleMessage("🌟 发现新版本 🌟"),
        "version_title_unknown":
            MessageLookupByLibrary.simpleMessage("❓ 获取最新版本信息失败 ❓"),
        "version_title_update":
            MessageLookupByLibrary.simpleMessage("🚀 程序更新 🚀")
      };
}
