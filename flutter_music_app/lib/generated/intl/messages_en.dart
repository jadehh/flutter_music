// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(num) => "Adjust the position of the selected ${num} song to";

  static String m1(name) => "Adjust the position of ${name} to";

  static String m2(name) => "This is already ${name}\'s comment";

  static String m3(total) => "Hot ${total}";

  static String m4(total) => "New ${total}";

  static String m5(name, singer) => "${name}-${singer}\'s comment";

  static String m6(num) => "${num} hours ago";

  static String m7(num) => "${num} minutes ago";

  static String m8(num) => "${num} seconds ago";

  static String m9(message) => "Call failed: ${message}";

  static String m10(name) =>
      "You have previously favorited the list [${name}], do you want to update the songs?";

  static String m11(name) => "Add the song(s) to ${name}";

  static String m12(importName, localName) =>
      "The imported list (${importName}) has the same ID as the local list (${localName}). Do you overwrite the local list?";

  static String m13(value) => "${value} Music";

  static String m14(num) =>
      "Do you really want to remove the selected ${num} songs?";

  static String m15(name) => "Do you really want to remove ${name}?";

  static String m16(total, success, failed) =>
      "A total of ${total} songs were found, ${success} were added successfully, and ${failed} were added. You can go to the error log to view the songs that failed to be added.";

  static String m17(Total) => "${Total} songs found, all added!";

  static String m18(total) =>
      "A total of ${total} files that meet the requirements have been found and have been quickly added to the current list. Now we will enter the file tag reading process. Please do not exit the application!";

  static String m19(name) =>
      "This will replace the songs in ${name} with the songs in the online list, are you sure you want to update?";

  static String m20(name) => "${name} failed to update";

  static String m21(name) => "${name} updated successfully";

  static String m22(singer, name) =>
      "Do you really not like ${singer}\'s ${name}?";

  static String m23(name) => "Do you really dislike ${name}?";

  static String m24(location) => "From ${location}";

  static String m25(name) => "Name: ${name}";

  static String m26(msg) => "Failed to select storage path: ${msg}";

  static String m27(time) =>
      "The server is busy, try again in ${time} seconds...";

  static String m28(num) => "Number of rules: ${num}";

  static String m29(address) => "Local IP address: ${address}";

  static String m30(status) => "Status: ${status}";

  static String m31(name) => "Share ${name} to...";

  static String m32(name) => "Artist: ${name}";

  static String m33(name) => "Choose how to sync with ${name}\'s dislike list";

  static String m34(name) => "Choose how to sync lists with ${name}";

  static String m35(num) => "You can only set up to ${num} minutes";

  static String m36(time) => "Stop playing after ${time}";

  static String m37(name) => "Custom source [${name}] failed to initialize:";

  static String m38(message) => "Custom source import failed: \n${message}";

  static String m39(name) => "Do you really want to remove ${name}?";

  static String m40(name) => "Custom source [${name}] found new version";

  static String m41(current, total, progress) =>
      "I am trying to download...${current}/${total} (${progress}%)";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_to": MessageLookupByLibrary.simpleMessage("Add to..."),
        "agree": MessageLookupByLibrary.simpleMessage("Agree"),
        "agree_go": MessageLookupByLibrary.simpleMessage("To turn on"),
        "agree_to": MessageLookupByLibrary.simpleMessage("Go to settings"),
        "app_name": MessageLookupByLibrary.simpleMessage("Flutter Music"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "back_home": MessageLookupByLibrary.simpleMessage("Back"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancel_button_text_2":
            MessageLookupByLibrary.simpleMessage("No, no, no, wrong click"),
        "change_position":
            MessageLookupByLibrary.simpleMessage("Change Position"),
        "change_position_list_title": MessageLookupByLibrary.simpleMessage(
            "Change the position of the list"),
        "change_position_music_multi_title": m0,
        "change_position_music_title": m1,
        "change_position_tip":
            MessageLookupByLibrary.simpleMessage("Please enter a new position"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "collect": MessageLookupByLibrary.simpleMessage("Collect"),
        "collect_songlist":
            MessageLookupByLibrary.simpleMessage("Collection Songlist"),
        "collect_success":
            MessageLookupByLibrary.simpleMessage("Collection success"),
        "collect_toplist":
            MessageLookupByLibrary.simpleMessage("Collection Toplist"),
        "comment_hide_text":
            MessageLookupByLibrary.simpleMessage("Close comments"),
        "comment_refresh": m2,
        "comment_show_image":
            MessageLookupByLibrary.simpleMessage("display image"),
        "comment_show_text":
            MessageLookupByLibrary.simpleMessage("Expand comment"),
        "comment_tab_hot": m3,
        "comment_tab_new": m4,
        "comment_title": m5,
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirm_button_text": MessageLookupByLibrary.simpleMessage("Yes"),
        "confirm_tip": MessageLookupByLibrary.simpleMessage(
            "Just to double check, do you really want to do this?"),
        "copy_name": MessageLookupByLibrary.simpleMessage("Share song"),
        "copy_name_tip": MessageLookupByLibrary.simpleMessage("Copied"),
        "create_new_folder":
            MessageLookupByLibrary.simpleMessage("Create new folder"),
        "create_new_folder_error_tip":
            MessageLookupByLibrary.simpleMessage("The name entered is invalid"),
        "create_new_folder_tip": MessageLookupByLibrary.simpleMessage(
            "Please enter a new folder name"),
        "date_format_hour": m6,
        "date_format_minute": m7,
        "date_format_second": m8,
        "deep_link__handle_error_tip": m9,
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "dialog_cancel": MessageLookupByLibrary.simpleMessage("No"),
        "dialog_confirm": MessageLookupByLibrary.simpleMessage("OK"),
        "disagree": MessageLookupByLibrary.simpleMessage("Disagree"),
        "disagree_tip": MessageLookupByLibrary.simpleMessage("Cancelled..."),
        "dislike": MessageLookupByLibrary.simpleMessage("Dislike"),
        "duplicate_list_tip": m10,
        "edit_metadata": MessageLookupByLibrary.simpleMessage("Edit tag"),
        "exit_app_tip": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to quit the app?"),
        "ignoring_battery_optimization_check_tip":
            MessageLookupByLibrary.simpleMessage(
                "LX Music is not on the list of ignored battery optimization, which may cause the problem of being suspended by the system when playing music in the background. Do you want to add LX Music to the whitelist?"),
        "ignoring_battery_optimization_check_title":
            MessageLookupByLibrary.simpleMessage(
                "Background running permission setting reminder"),
        "input_error": MessageLookupByLibrary.simpleMessage(
            "Don\'t input indiscriminately 😡"),
        "list_add_btn_title": m11,
        "list_add_tip_exists": MessageLookupByLibrary.simpleMessage(
            "This song already exists in the list, don\'t click me again~😡"),
        "list_add_title_first_add": MessageLookupByLibrary.simpleMessage("Add"),
        "list_add_title_first_move":
            MessageLookupByLibrary.simpleMessage("Move"),
        "list_add_title_last": MessageLookupByLibrary.simpleMessage("to..."),
        "list_create":
            MessageLookupByLibrary.simpleMessage("Create a new list"),
        "list_create_input_placeholder": MessageLookupByLibrary.simpleMessage(
            "What name do you think of..."),
        "list_duplicate_tip": MessageLookupByLibrary.simpleMessage(
            "A list with the same name already exists. Do you want to continue creating it?"),
        "list_edit_action_tip_add_failed":
            MessageLookupByLibrary.simpleMessage("add failed"),
        "list_edit_action_tip_add_success":
            MessageLookupByLibrary.simpleMessage("Added successfully"),
        "list_edit_action_tip_exist": MessageLookupByLibrary.simpleMessage(
            "This song already exists in this list"),
        "list_edit_action_tip_move_failed":
            MessageLookupByLibrary.simpleMessage("failed to move"),
        "list_edit_action_tip_move_success":
            MessageLookupByLibrary.simpleMessage("Moved successfully"),
        "list_edit_action_tip_remove_success":
            MessageLookupByLibrary.simpleMessage("Removed successfully"),
        "list_end": MessageLookupByLibrary.simpleMessage("In The End"),
        "list_error": MessageLookupByLibrary.simpleMessage(
            "Loading failed😥, click to try to reload"),
        "list_export": MessageLookupByLibrary.simpleMessage("Export"),
        "list_export_part_desc": MessageLookupByLibrary.simpleMessage(
            "Choose where to save the list file"),
        "list_import": MessageLookupByLibrary.simpleMessage("Import"),
        "list_import_part_button_cancel":
            MessageLookupByLibrary.simpleMessage("No"),
        "list_import_part_button_confirm":
            MessageLookupByLibrary.simpleMessage("Overwrite"),
        "list_import_part_confirm": m12,
        "list_import_part_desc":
            MessageLookupByLibrary.simpleMessage("Select list file"),
        "list_import_tip__alldata": MessageLookupByLibrary.simpleMessage(
            "This is a backup file of all data, you need to go here to import:\nSettings -> Backup & Restore -> List Data -> Import List"),
        "list_import_tip__failed":
            MessageLookupByLibrary.simpleMessage("Import failed"),
        "list_import_tip__playlist": MessageLookupByLibrary.simpleMessage(
            "This is a list backup file, you need to go here to import:\nSettings -> Backup & Restore -> List Data -> Import List"),
        "list_import_tip__playlist_part": MessageLookupByLibrary.simpleMessage(
            "This is a single list file, you need to go here to import:\nMy Lists -> Click the menu button to the right of any list name -> Select Import from the pop-up menu"),
        "list_import_tip__setting": MessageLookupByLibrary.simpleMessage(
            "This is a settings backup file, the mobile terminal does not support importing such files"),
        "list_import_tip__unknown": MessageLookupByLibrary.simpleMessage(
            "Unknown file type, please try upgrading to the latest version and try again"),
        "list_loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "list_multi_add_title_first_add":
            MessageLookupByLibrary.simpleMessage("Add selected"),
        "list_multi_add_title_first_move":
            MessageLookupByLibrary.simpleMessage("Move the selected one"),
        "list_multi_add_title_last":
            MessageLookupByLibrary.simpleMessage("First song to..."),
        "list_music_count_format": m13,
        "list_remove": MessageLookupByLibrary.simpleMessage("Remove"),
        "list_remove_music_multi_tip": m14,
        "list_remove_tip": m15,
        "list_remove_tip_button":
            MessageLookupByLibrary.simpleMessage("Yes, that\'s right"),
        "list_rename": MessageLookupByLibrary.simpleMessage("Rename"),
        "list_rename_title":
            MessageLookupByLibrary.simpleMessage("Rename List"),
        "list_select_all": MessageLookupByLibrary.simpleMessage("Select All"),
        "list_select_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "list_select_local_file":
            MessageLookupByLibrary.simpleMessage("add local songs"),
        "list_select_local_file_desc":
            MessageLookupByLibrary.simpleMessage("Select local song folder"),
        "list_select_local_file_empty_tip":
            MessageLookupByLibrary.simpleMessage(
                "No songs found in current directory"),
        "list_select_local_file_result_failed_tip": m16,
        "list_select_local_file_result_tip": m17,
        "list_select_local_file_temp_add_tip": m18,
        "list_select_range": MessageLookupByLibrary.simpleMessage("range"),
        "list_select_single":
            MessageLookupByLibrary.simpleMessage("Single Select"),
        "list_select_unall":
            MessageLookupByLibrary.simpleMessage("Reverse Selection"),
        "list_sort": MessageLookupByLibrary.simpleMessage("Sort songs"),
        "list_sort_modal_by_album":
            MessageLookupByLibrary.simpleMessage("Album name"),
        "list_sort_modal_by_down":
            MessageLookupByLibrary.simpleMessage("Descending order"),
        "list_sort_modal_by_field":
            MessageLookupByLibrary.simpleMessage("Sort field"),
        "list_sort_modal_by_name":
            MessageLookupByLibrary.simpleMessage("Song name"),
        "list_sort_modal_by_random":
            MessageLookupByLibrary.simpleMessage("Randomly shuffle"),
        "list_sort_modal_by_singer":
            MessageLookupByLibrary.simpleMessage("Singer name"),
        "list_sort_modal_by_source":
            MessageLookupByLibrary.simpleMessage("Song source"),
        "list_sort_modal_by_time":
            MessageLookupByLibrary.simpleMessage("Duration"),
        "list_sort_modal_by_type":
            MessageLookupByLibrary.simpleMessage("Sort category"),
        "list_sort_modal_by_up":
            MessageLookupByLibrary.simpleMessage("Ascending order"),
        "list_sync": MessageLookupByLibrary.simpleMessage("Update"),
        "list_sync_confirm_tip": m19,
        "list_temp": MessageLookupByLibrary.simpleMessage("Temp list"),
        "list_update_error": m20,
        "list_update_success": m21,
        "list_updating": MessageLookupByLibrary.simpleMessage("updating"),
        "lists__duplicate": MessageLookupByLibrary.simpleMessage("repeat song"),
        "lists_dislike_music_add_tip":
            MessageLookupByLibrary.simpleMessage("Added"),
        "lists_dislike_music_singer_tip": m22,
        "lists_dislike_music_tip": m23,
        "load_failed":
            MessageLookupByLibrary.simpleMessage("Ah, loading failed 😥"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
        "location": m24,
        "lyric__load_error":
            MessageLookupByLibrary.simpleMessage("Failed to get lyrics"),
        "metadata_edit_modal_confirm":
            MessageLookupByLibrary.simpleMessage("Save"),
        "metadata_edit_modal_failed": MessageLookupByLibrary.simpleMessage(
            "Saving failed, please view the error log for details."),
        "metadata_edit_modal_file_name":
            MessageLookupByLibrary.simpleMessage("File name"),
        "metadata_edit_modal_file_path":
            MessageLookupByLibrary.simpleMessage("File path"),
        "metadata_edit_modal_form_album_name":
            MessageLookupByLibrary.simpleMessage("Album name"),
        "metadata_edit_modal_form_lyric":
            MessageLookupByLibrary.simpleMessage("LRC Lyrics"),
        "metadata_edit_modal_form_match_lyric":
            MessageLookupByLibrary.simpleMessage("Online matching"),
        "metadata_edit_modal_form_match_lyric_failed":
            MessageLookupByLibrary.simpleMessage(
                "Online lyrics matching failed"),
        "metadata_edit_modal_form_match_lyric_success":
            MessageLookupByLibrary.simpleMessage(
                "Lyrics matched successfully🎉"),
        "metadata_edit_modal_form_match_pic":
            MessageLookupByLibrary.simpleMessage("Online matching"),
        "metadata_edit_modal_form_match_pic_failed":
            MessageLookupByLibrary.simpleMessage(
                "Failed to match cover online"),
        "metadata_edit_modal_form_match_pic_success":
            MessageLookupByLibrary.simpleMessage("Cover match successful🎉"),
        "metadata_edit_modal_form_name":
            MessageLookupByLibrary.simpleMessage("Song name"),
        "metadata_edit_modal_form_parse_name":
            MessageLookupByLibrary.simpleMessage(
                "Parse song name and artist from file name"),
        "metadata_edit_modal_form_parse_name_singer":
            MessageLookupByLibrary.simpleMessage("Name - Artist"),
        "metadata_edit_modal_form_parse_singer_name":
            MessageLookupByLibrary.simpleMessage("Artist - Name"),
        "metadata_edit_modal_form_pic":
            MessageLookupByLibrary.simpleMessage("Song cover"),
        "metadata_edit_modal_form_remove_lyric":
            MessageLookupByLibrary.simpleMessage("Clear"),
        "metadata_edit_modal_form_remove_pic":
            MessageLookupByLibrary.simpleMessage("Remove image"),
        "metadata_edit_modal_form_select_pic":
            MessageLookupByLibrary.simpleMessage("Select Image"),
        "metadata_edit_modal_form_select_pic_title":
            MessageLookupByLibrary.simpleMessage("Select song cover image"),
        "metadata_edit_modal_form_singer":
            MessageLookupByLibrary.simpleMessage("Artist"),
        "metadata_edit_modal_processing":
            MessageLookupByLibrary.simpleMessage("Writing..."),
        "metadata_edit_modal_success":
            MessageLookupByLibrary.simpleMessage("Saved successfully"),
        "metadata_edit_modal_tip":
            MessageLookupByLibrary.simpleMessage("Song name cannot be empty"),
        "metadata_edit_modal_title":
            MessageLookupByLibrary.simpleMessage("Edit song tags"),
        "move_to": MessageLookupByLibrary.simpleMessage("Move to..."),
        "music_source_detail":
            MessageLookupByLibrary.simpleMessage("Song page"),
        "name": m25,
        "nav_exit": MessageLookupByLibrary.simpleMessage("Exit application"),
        "nav_love": MessageLookupByLibrary.simpleMessage("Collection"),
        "nav_search": MessageLookupByLibrary.simpleMessage("Search"),
        "nav_setting": MessageLookupByLibrary.simpleMessage("Setting"),
        "nav_songlist": MessageLookupByLibrary.simpleMessage("Song list"),
        "nav_top": MessageLookupByLibrary.simpleMessage("Leaderboard"),
        "never_show": MessageLookupByLibrary.simpleMessage("Never show again"),
        "no_item": MessageLookupByLibrary.simpleMessage("The list is empty..."),
        "notifications_check_tip": MessageLookupByLibrary.simpleMessage(
            "You have not allowed LX Music to display notifications, or the Music Service in the LX Music notification settings has been disabled, which will prevent you from using the notification bar to pause, switch songs, etc. Do you want to enable it?"),
        "notifications_check_title": MessageLookupByLibrary.simpleMessage(
            "Notification permission reminder"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "open_storage_error_tip":
            MessageLookupByLibrary.simpleMessage("The entered path is illegal"),
        "open_storage_not_found_title": MessageLookupByLibrary.simpleMessage(
            "External memory card not found, please manually enter the path below to specify the external memory"),
        "open_storage_select_managed_folder_failed_tip": m26,
        "open_storage_select_path":
            MessageLookupByLibrary.simpleMessage("Open storage path"),
        "open_storage_select_path_tip": MessageLookupByLibrary.simpleMessage(
            "Tip: For external storage, if you still cannot access it after granting storage permissions, you can click the button below to select the path to allow access."),
        "open_storage_tip":
            MessageLookupByLibrary.simpleMessage("Enter storage path"),
        "open_storage_title": MessageLookupByLibrary.simpleMessage(
            "Please manually enter the path below to specify the external storage"),
        "parent_dir_name":
            MessageLookupByLibrary.simpleMessage("Parent directory"),
        "pause": MessageLookupByLibrary.simpleMessage("Pause"),
        "play": MessageLookupByLibrary.simpleMessage("Play"),
        "play_all": MessageLookupByLibrary.simpleMessage("Play all"),
        "play_detail_setting_lrc_align":
            MessageLookupByLibrary.simpleMessage("Lyric Alignment"),
        "play_detail_setting_lrc_align_center":
            MessageLookupByLibrary.simpleMessage("Center"),
        "play_detail_setting_lrc_align_left":
            MessageLookupByLibrary.simpleMessage("Left"),
        "play_detail_setting_lrc_align_right":
            MessageLookupByLibrary.simpleMessage("Right"),
        "play_detail_setting_lrc_font_size":
            MessageLookupByLibrary.simpleMessage("Lyric font size"),
        "play_detail_setting_playback_rate":
            MessageLookupByLibrary.simpleMessage("Playback rate"),
        "play_detail_setting_playback_rate_reset":
            MessageLookupByLibrary.simpleMessage("reset"),
        "play_detail_setting_show_lyric_progress_setting":
            MessageLookupByLibrary.simpleMessage(
                "Allows to adjust playback progress by lyrics"),
        "play_detail_setting_title":
            MessageLookupByLibrary.simpleMessage("Player settings"),
        "play_detail_setting_volume":
            MessageLookupByLibrary.simpleMessage("Volume"),
        "play_detail_todo_tip": MessageLookupByLibrary.simpleMessage(
            "What do you want? No, this function has not been implemented yet 😛, But you can try to locate the currently playing song by long pressing (only valid for playing songs in \"My List\")"),
        "play_later": MessageLookupByLibrary.simpleMessage("Play later"),
        "play_list_loop":
            MessageLookupByLibrary.simpleMessage("List loop playback"),
        "play_list_order":
            MessageLookupByLibrary.simpleMessage("Play in order"),
        "play_list_random":
            MessageLookupByLibrary.simpleMessage("Shuffle Playback"),
        "play_next": MessageLookupByLibrary.simpleMessage("Next song"),
        "play_prev": MessageLookupByLibrary.simpleMessage("Previous song"),
        "play_single":
            MessageLookupByLibrary.simpleMessage("Disable song switching"),
        "play_single_loop":
            MessageLookupByLibrary.simpleMessage("Single loop playback"),
        "player__buffering":
            MessageLookupByLibrary.simpleMessage("buffering..."),
        "player__end": MessageLookupByLibrary.simpleMessage("finished playing"),
        "player__error": MessageLookupByLibrary.simpleMessage(
            "Audio loading error, switch to next track after 5 seconds"),
        "player__geting_url":
            MessageLookupByLibrary.simpleMessage("Acquiring the song link..."),
        "player__geting_url_delay_retry": m27,
        "player__loading":
            MessageLookupByLibrary.simpleMessage("Music loading..."),
        "player__refresh_url": MessageLookupByLibrary.simpleMessage(
            "The URL has expired, refreshing the URL..."),
        "quality_high_quality": MessageLookupByLibrary.simpleMessage("HQ"),
        "quality_lossless": MessageLookupByLibrary.simpleMessage("SQ"),
        "quality_lossless_24bit": MessageLookupByLibrary.simpleMessage("Hires"),
        "search__welcome":
            MessageLookupByLibrary.simpleMessage("Search what I want~~😉"),
        "search_history_search":
            MessageLookupByLibrary.simpleMessage("History search"),
        "search_hot_search":
            MessageLookupByLibrary.simpleMessage("popular searches"),
        "search_type_music": MessageLookupByLibrary.simpleMessage("Music"),
        "search_type_songlist":
            MessageLookupByLibrary.simpleMessage("Song list"),
        "setting__other_dislike_list":
            MessageLookupByLibrary.simpleMessage("Dislike song rule"),
        "setting__other_dislike_list_label": m28,
        "setting__other_dislike_list_saved_tip":
            MessageLookupByLibrary.simpleMessage("Saved"),
        "setting__other_lyric_raw_clear_btn":
            MessageLookupByLibrary.simpleMessage("Clear lyrics cache"),
        "setting__other_lyric_raw_label":
            MessageLookupByLibrary.simpleMessage("Number of lyrics:"),
        "setting__other_meta_cache":
            MessageLookupByLibrary.simpleMessage("Other cache management"),
        "setting__other_music_url_clear_btn":
            MessageLookupByLibrary.simpleMessage("Clear song URL cache"),
        "setting__other_music_url_label":
            MessageLookupByLibrary.simpleMessage("Number of song URLs:"),
        "setting__other_other_source_clear_btn":
            MessageLookupByLibrary.simpleMessage("Clear the source song cache"),
        "setting__other_other_source_label":
            MessageLookupByLibrary.simpleMessage(
                "Change source song information quantity:"),
        "setting__other_resource_cache":
            MessageLookupByLibrary.simpleMessage("Resource Cache Management"),
        "setting_about": MessageLookupByLibrary.simpleMessage("About LX Music"),
        "setting_backup":
            MessageLookupByLibrary.simpleMessage("Backup and Recovery"),
        "setting_backup_all": MessageLookupByLibrary.simpleMessage(
            "All data (list data and setting data)"),
        "setting_backup_all_export":
            MessageLookupByLibrary.simpleMessage("Export"),
        "setting_backup_all_export_desc":
            MessageLookupByLibrary.simpleMessage("Select the backup to..."),
        "setting_backup_all_import":
            MessageLookupByLibrary.simpleMessage("Import"),
        "setting_backup_all_import_desc":
            MessageLookupByLibrary.simpleMessage("Select a backup file"),
        "setting_backup_part": MessageLookupByLibrary.simpleMessage(
            "List data (common with PC-side list backup files)"),
        "setting_backup_part_export_list":
            MessageLookupByLibrary.simpleMessage("Export list"),
        "setting_backup_part_export_list_desc":
            MessageLookupByLibrary.simpleMessage(
                "Select the save location of the playlist backup file"),
        "setting_backup_part_export_list_tip_failed":
            MessageLookupByLibrary.simpleMessage("Playlist export failed"),
        "setting_backup_part_export_list_tip_success":
            MessageLookupByLibrary.simpleMessage("Export successful"),
        "setting_backup_part_export_list_tip_zip":
            MessageLookupByLibrary.simpleMessage(
                "📦The file is being packaged...\nIf the file is too large, it may take some time⏳"),
        "setting_backup_part_export_setting":
            MessageLookupByLibrary.simpleMessage("Export settings"),
        "setting_backup_part_export_setting_desc":
            MessageLookupByLibrary.simpleMessage("Save the list to..."),
        "setting_backup_part_import_list":
            MessageLookupByLibrary.simpleMessage("Import List"),
        "setting_backup_part_import_list_desc":
            MessageLookupByLibrary.simpleMessage(
                "Select the list of backup files"),
        "setting_backup_part_import_list_tip_error":
            MessageLookupByLibrary.simpleMessage("List import failed 😕"),
        "setting_backup_part_import_list_tip_runing":
            MessageLookupByLibrary.simpleMessage(
                "🚀I am trying to import...\nIf the list is too big, it may take some time⏳"),
        "setting_backup_part_import_list_tip_success":
            MessageLookupByLibrary.simpleMessage("Import successful 🎉"),
        "setting_backup_part_import_list_tip_unzip":
            MessageLookupByLibrary.simpleMessage(
                "📦File parsing...\nIf the file is too large, it may take some time⏳"),
        "setting_backup_part_import_setting":
            MessageLookupByLibrary.simpleMessage("Import settings"),
        "setting_backup_part_import_setting_desc":
            MessageLookupByLibrary.simpleMessage("Select the Settings file"),
        "setting_basic": MessageLookupByLibrary.simpleMessage("General"),
        "setting_basic_always_keep_statusbar_height":
            MessageLookupByLibrary.simpleMessage(
                "Always preserve status bar height"),
        "setting_basic_always_keep_statusbar_height_tip":
            MessageLookupByLibrary.simpleMessage(
                "By default, the program will dynamically determine whether space needs to be reserved for the system status bar, but if there is a situation where software interactive content overlaps with the status bar content on your device, you can enable this setting to always reserve space for the system status bar. \n."),
        "setting_basic_animation":
            MessageLookupByLibrary.simpleMessage("Random pop-up animation"),
        "setting_basic_auto_hide_play_bar":
            MessageLookupByLibrary.simpleMessage(
                "Auto hide playbar when keyboard pops up"),
        "setting_basic_drawer_layout_position":
            MessageLookupByLibrary.simpleMessage(
                "Navigation, favorite list pop-up direction"),
        "setting_basic_drawer_layout_position_left":
            MessageLookupByLibrary.simpleMessage("Left side"),
        "setting_basic_drawer_layout_position_right":
            MessageLookupByLibrary.simpleMessage("Right side"),
        "setting_basic_font_size": MessageLookupByLibrary.simpleMessage(
            "Font size setting [effective after restart]"),
        "setting_basic_font_size_100":
            MessageLookupByLibrary.simpleMessage("standard"),
        "setting_basic_font_size_110":
            MessageLookupByLibrary.simpleMessage("Big"),
        "setting_basic_font_size_120":
            MessageLookupByLibrary.simpleMessage("bigger"),
        "setting_basic_font_size_130":
            MessageLookupByLibrary.simpleMessage("Very big"),
        "setting_basic_font_size_80":
            MessageLookupByLibrary.simpleMessage("smaller"),
        "setting_basic_font_size_90":
            MessageLookupByLibrary.simpleMessage("Small"),
        "setting_basic_font_size_preview":
            MessageLookupByLibrary.simpleMessage("LX Music Font Size Preview"),
        "setting_basic_home_page_scroll": MessageLookupByLibrary.simpleMessage(
            "Enable horizontal scrolling on the vertical home page"),
        "setting_basic_lang": MessageLookupByLibrary.simpleMessage("Language"),
        "setting_basic_lang_system":
            MessageLookupByLibrary.simpleMessage("flow system"),
        "setting_basic_share_type":
            MessageLookupByLibrary.simpleMessage("Share"),
        "setting_basic_share_type_clipboard":
            MessageLookupByLibrary.simpleMessage("copy to clipboard"),
        "setting_basic_share_type_system":
            MessageLookupByLibrary.simpleMessage("Share using the system"),
        "setting_basic_show_animation":
            MessageLookupByLibrary.simpleMessage("Show switching animation"),
        "setting_basic_show_back_btn":
            MessageLookupByLibrary.simpleMessage("Show back to desktop button"),
        "setting_basic_show_exit_btn":
            MessageLookupByLibrary.simpleMessage("Show exit app button"),
        "setting_basic_source":
            MessageLookupByLibrary.simpleMessage("Music source"),
        "setting_basic_source_direct":
            MessageLookupByLibrary.simpleMessage("Direct API"),
        "setting_basic_source_status_failed":
            MessageLookupByLibrary.simpleMessage("initialization failed"),
        "setting_basic_source_status_initing":
            MessageLookupByLibrary.simpleMessage("Initializing"),
        "setting_basic_source_status_success":
            MessageLookupByLibrary.simpleMessage("Initialization successful"),
        "setting_basic_source_temp": MessageLookupByLibrary.simpleMessage(
            "Temporary API (some features not available; workaround if Test API unavailable)"),
        "setting_basic_source_test": MessageLookupByLibrary.simpleMessage(
            "Test API (Available for most software features)"),
        "setting_basic_source_title":
            MessageLookupByLibrary.simpleMessage("Choose a music source"),
        "setting_basic_source_user_api_btn":
            MessageLookupByLibrary.simpleMessage("Custom source management"),
        "setting_basic_sourcename":
            MessageLookupByLibrary.simpleMessage("Source name"),
        "setting_basic_sourcename_alias":
            MessageLookupByLibrary.simpleMessage("Aliases"),
        "setting_basic_sourcename_real":
            MessageLookupByLibrary.simpleMessage("Original"),
        "setting_basic_sourcename_title": MessageLookupByLibrary.simpleMessage(
            "Select the name of music source"),
        "setting_basic_startup_auto_play": MessageLookupByLibrary.simpleMessage(
            "Play music automatically after startup"),
        "setting_basic_startup_push_play_detail_screen":
            MessageLookupByLibrary.simpleMessage(
                "Open the playback details interface after startup"),
        "setting_basic_theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "setting_basic_theme_auto_theme": MessageLookupByLibrary.simpleMessage(
            "Follow the system light and dark mode to switch themes"),
        "setting_basic_theme_dark":
            MessageLookupByLibrary.simpleMessage("Dark Mode"),
        "setting_basic_theme_dynamic_bg":
            MessageLookupByLibrary.simpleMessage("Use dynamic backgrounds"),
        "setting_basic_theme_follow_system":
            MessageLookupByLibrary.simpleMessage("Follow System"),
        "setting_basic_theme_font_shadow":
            MessageLookupByLibrary.simpleMessage("Enable font shadow"),
        "setting_basic_theme_hide_bg_dark":
            MessageLookupByLibrary.simpleMessage("Hide black theme"),
        "setting_basic_theme_light":
            MessageLookupByLibrary.simpleMessage("Light Mode"),
        "setting_basic_theme_mode":
            MessageLookupByLibrary.simpleMessage("Theme Mode"),
        "setting_basic_theme_more_btn_show":
            MessageLookupByLibrary.simpleMessage("Expand themes"),
        "setting_basic_use_system_file_selector":
            MessageLookupByLibrary.simpleMessage(
                "Use the system file selector"),
        "setting_basic_use_system_file_selector_tip":
            MessageLookupByLibrary.simpleMessage(
                "After enabling this option, operations such as importing backup files, custom sources, etc. will not require application for storage permissions, but it may not be available on some systems.\nIf you cannot import files after enabling this setting, you can turn off this setting and fall back to the software\'s built-in file selector."),
        "setting_dislike_list_input_tip": MessageLookupByLibrary.simpleMessage(
            "song name@artist name\nSong name\n@ singer name"),
        "setting_dislike_list_tips": MessageLookupByLibrary.simpleMessage(
            "1. If there is a \"@\" symbol in the song or singer\'s name, you need to replace it with \"#\"\n2. Specify a song of a singer: Name@Singer\n3. Specify a song: Name\n4. Specify a certain singer: @Singer"),
        "setting_list": MessageLookupByLibrary.simpleMessage("List settings"),
        "setting_list_add_music_location_type":
            MessageLookupByLibrary.simpleMessage(
                "Position when the song was added to the list"),
        "setting_list_add_music_location_type_bottom":
            MessageLookupByLibrary.simpleMessage("Bottom"),
        "setting_list_add_music_location_type_top":
            MessageLookupByLibrary.simpleMessage("Top"),
        "setting_list_click_action": MessageLookupByLibrary.simpleMessage(
            "When you click a song in the list, it will automatically switch to the current list for playback (only valid for playlists and leaderboards)"),
        "setting_list_show_album_name":
            MessageLookupByLibrary.simpleMessage("Show song album name"),
        "setting_lyric_dektop_permission_tip": MessageLookupByLibrary.simpleMessage(
            "The desktop lyrics function needs to be granted the permission of LX Music to display the floating window in the system permission setting before it can be used. Do you go to the relevant interface to grant this permission?"),
        "setting_lyric_desktop":
            MessageLookupByLibrary.simpleMessage("Desktop lyrics"),
        "setting_lyric_desktop_enable":
            MessageLookupByLibrary.simpleMessage("Show desktop lyrics"),
        "setting_lyric_desktop_lock":
            MessageLookupByLibrary.simpleMessage("Lock lyrics"),
        "setting_lyric_desktop_maxlineNum":
            MessageLookupByLibrary.simpleMessage("maximum number of lines"),
        "setting_lyric_desktop_single_line":
            MessageLookupByLibrary.simpleMessage("Use single line lyrics"),
        "setting_lyric_desktop_text_opacity":
            MessageLookupByLibrary.simpleMessage("Lyric font transparency"),
        "setting_lyric_desktop_text_size":
            MessageLookupByLibrary.simpleMessage("Lyric font size"),
        "setting_lyric_desktop_text_x":
            MessageLookupByLibrary.simpleMessage("Lyrics Horizontal Alignment"),
        "setting_lyric_desktop_text_x_center":
            MessageLookupByLibrary.simpleMessage("Center"),
        "setting_lyric_desktop_text_x_left":
            MessageLookupByLibrary.simpleMessage("Left"),
        "setting_lyric_desktop_text_x_right":
            MessageLookupByLibrary.simpleMessage("Right"),
        "setting_lyric_desktop_text_y":
            MessageLookupByLibrary.simpleMessage("Lyrics vertical alignment"),
        "setting_lyric_desktop_text_y_bottom":
            MessageLookupByLibrary.simpleMessage("Bottom"),
        "setting_lyric_desktop_text_y_center":
            MessageLookupByLibrary.simpleMessage("Center"),
        "setting_lyric_desktop_text_y_top":
            MessageLookupByLibrary.simpleMessage("Top"),
        "setting_lyric_desktop_theme":
            MessageLookupByLibrary.simpleMessage("Lyrics theme color"),
        "setting_lyric_desktop_toggle_anima":
            MessageLookupByLibrary.simpleMessage(
                "Show lyrics switching animation"),
        "setting_lyric_desktop_view_width":
            MessageLookupByLibrary.simpleMessage("window percentage width"),
        "setting_other": MessageLookupByLibrary.simpleMessage("Other"),
        "setting_other_cache": MessageLookupByLibrary.simpleMessage(
            "Cache management (including the cache of songs, lyrics, error logs, etc., it is not recommended to clean up if there is no problem related to song playback)"),
        "setting_other_cache_clear_btn":
            MessageLookupByLibrary.simpleMessage("Clear Cache"),
        "setting_other_cache_clear_success_tip":
            MessageLookupByLibrary.simpleMessage("Cache clearing completed"),
        "setting_other_cache_getting":
            MessageLookupByLibrary.simpleMessage("Statistics cached..."),
        "setting_other_cache_size":
            MessageLookupByLibrary.simpleMessage("Currently used cache size: "),
        "setting_other_dislike_list_show_btn":
            MessageLookupByLibrary.simpleMessage("Edit dislike song rules"),
        "setting_other_log": MessageLookupByLibrary.simpleMessage(
            "Error log (log when abnormal operation occurs)"),
        "setting_other_log_btn_clean":
            MessageLookupByLibrary.simpleMessage("Clear"),
        "setting_other_log_btn_hide":
            MessageLookupByLibrary.simpleMessage("Close"),
        "setting_other_log_btn_show":
            MessageLookupByLibrary.simpleMessage("View log"),
        "setting_other_log_sync_log":
            MessageLookupByLibrary.simpleMessage("Record synchronization log"),
        "setting_other_log_tip_clean_success":
            MessageLookupByLibrary.simpleMessage("Log cleaning completed"),
        "setting_other_log_tip_null":
            MessageLookupByLibrary.simpleMessage("The log is empty~"),
        "setting_other_log_user_api_log":
            MessageLookupByLibrary.simpleMessage("Logging custom source logs"),
        "setting_play_audio_offload":
            MessageLookupByLibrary.simpleMessage("Enable audio offload"),
        "setting_play_audio_offload_tip": MessageLookupByLibrary.simpleMessage(
            "Enabling audio offloading can save power consumption, but on some devices, all songs may prompt \"Audio loading error\" or \"The whole song cannot be played completely\". This is caused by a bug in the current system.\nFor People who encounter this problem can turn off this option and restart the application completely to try again."),
        "setting_play_auto_clean_played_list":
            MessageLookupByLibrary.simpleMessage(
                "Automatically clear the played list"),
        "setting_play_auto_clean_played_list_tip":
            MessageLookupByLibrary.simpleMessage(
                "In random play mode, when switching songs by clicking the same list as the playlist, if automatic clearing of the already played list is enabled, the played songs will re-participate in random play."),
        "setting_play_cache_size":
            MessageLookupByLibrary.simpleMessage("Maximum cache size (MB)"),
        "setting_play_cache_size_no_cache":
            MessageLookupByLibrary.simpleMessage("Disabled cache"),
        "setting_play_cache_size_save_tip": MessageLookupByLibrary.simpleMessage(
            "The cache setting is completed, it will take effect after restarting the application"),
        "setting_play_handle_audio_focus": MessageLookupByLibrary.simpleMessage(
            "When other apps play sound, automatically pause the playback"),
        "setting_play_handle_audio_focus_tip":
            MessageLookupByLibrary.simpleMessage(
                "Take effect after restarting the application"),
        "setting_play_lyric_transition":
            MessageLookupByLibrary.simpleMessage("Show lyrics translation"),
        "setting_play_play_quality": MessageLookupByLibrary.simpleMessage(
            "Prioritize playback sound quality (if supported)"),
        "setting_play_s2t": MessageLookupByLibrary.simpleMessage(
            "Convert the played lyrics to Traditional Chinese"),
        "setting_play_save_play_time":
            MessageLookupByLibrary.simpleMessage("Remember playback progress"),
        "setting_play_show_notification_image":
            MessageLookupByLibrary.simpleMessage(
                "Show song picture in notification bar"),
        "setting_play_show_roma": MessageLookupByLibrary.simpleMessage(
            "Show lyrics roman (if available)"),
        "setting_play_show_translation": MessageLookupByLibrary.simpleMessage(
            "Show lyrics translation (if available)"),
        "setting_player": MessageLookupByLibrary.simpleMessage("Play"),
        "setting_player_save_play_time":
            MessageLookupByLibrary.simpleMessage("Remember playback progress"),
        "setting_search":
            MessageLookupByLibrary.simpleMessage("Search settings"),
        "setting_search_show_history_search":
            MessageLookupByLibrary.simpleMessage("show search history"),
        "setting_search_show_hot_search":
            MessageLookupByLibrary.simpleMessage("show popular searches"),
        "setting_sync": MessageLookupByLibrary.simpleMessage("Synchronize"),
        "setting_sync_address": m29,
        "setting_sync_code_blocked_ip": MessageLookupByLibrary.simpleMessage(
            "The IP of the current device has been blocked by the server!"),
        "setting_sync_code_fail":
            MessageLookupByLibrary.simpleMessage("Invalid connection code"),
        "setting_sync_code_input_tip": MessageLookupByLibrary.simpleMessage(
            "Please enter the connection code"),
        "setting_sync_code_label": MessageLookupByLibrary.simpleMessage(
            "You need to enter the connection code for the first connection"),
        "setting_sync_enbale":
            MessageLookupByLibrary.simpleMessage("Enable sync"),
        "setting_sync_history":
            MessageLookupByLibrary.simpleMessage("History address"),
        "setting_sync_history_empty":
            MessageLookupByLibrary.simpleMessage("Nothing here"),
        "setting_sync_history_title":
            MessageLookupByLibrary.simpleMessage("Connection history"),
        "setting_sync_host_label": MessageLookupByLibrary.simpleMessage(
            "Synchronization service address"),
        "setting_sync_host_value_error_tip":
            MessageLookupByLibrary.simpleMessage(
                "The address needs to start with http:// or https://!"),
        "setting_sync_host_value_tip":
            MessageLookupByLibrary.simpleMessage("http://IP:Port"),
        "setting_sync_port_label": MessageLookupByLibrary.simpleMessage(
            "Synchronization service port number"),
        "setting_sync_port_tip": MessageLookupByLibrary.simpleMessage(
            "Please enter the synchronization service port number"),
        "setting_sync_status": m30,
        "setting_sync_status_enabled":
            MessageLookupByLibrary.simpleMessage("Connected"),
        "setting_theme": MessageLookupByLibrary.simpleMessage("theme settings"),
        "setting_version":
            MessageLookupByLibrary.simpleMessage("Software Update"),
        "setting_version_show_ver_modal":
            MessageLookupByLibrary.simpleMessage("Open the update window 🚀"),
        "share_card_title_music": m31,
        "share_title_music":
            MessageLookupByLibrary.simpleMessage("Song sharing"),
        "singer": m32,
        "songlist_hot": MessageLookupByLibrary.simpleMessage("Hot"),
        "songlist_hot_collect":
            MessageLookupByLibrary.simpleMessage("Hot Collect"),
        "songlist_new": MessageLookupByLibrary.simpleMessage("New"),
        "songlist_open": MessageLookupByLibrary.simpleMessage("Import"),
        "songlist_open_input_placeholder": MessageLookupByLibrary.simpleMessage(
            "Enter the playlist link or playlist ID"),
        "songlist_open_input_tip": MessageLookupByLibrary.simpleMessage(
            "1. Cross-source opening of the playlist is not supported. Please confirm whether the playlist to be opened corresponds to the current playlist source\n2. If you encounter a playlist link that cannot be opened, feedback is welcome\n3, Kugou source Open with playlist ID is not supported, but Kugou code is supported"),
        "songlist_recommend": MessageLookupByLibrary.simpleMessage("Recommend"),
        "songlist_rise": MessageLookupByLibrary.simpleMessage("Rise"),
        "songlist_tag_default": MessageLookupByLibrary.simpleMessage("Default"),
        "songlist_tag_hot": MessageLookupByLibrary.simpleMessage("Hot"),
        "songlist_tags":
            MessageLookupByLibrary.simpleMessage("Playlist category"),
        "source_alias_all": MessageLookupByLibrary.simpleMessage("Aggregated"),
        "source_alias_bd": MessageLookupByLibrary.simpleMessage("BD Music"),
        "source_alias_kg": MessageLookupByLibrary.simpleMessage("KG Music"),
        "source_alias_kw": MessageLookupByLibrary.simpleMessage("KW Music"),
        "source_alias_mg": MessageLookupByLibrary.simpleMessage("MG Music"),
        "source_alias_tx": MessageLookupByLibrary.simpleMessage("TX Music"),
        "source_alias_wy": MessageLookupByLibrary.simpleMessage("WY Music"),
        "source_real_all": MessageLookupByLibrary.simpleMessage("Aggregated"),
        "source_real_bd": MessageLookupByLibrary.simpleMessage("Baidu"),
        "source_real_kg": MessageLookupByLibrary.simpleMessage("Kugou"),
        "source_real_kw": MessageLookupByLibrary.simpleMessage("Kuwo"),
        "source_real_mg": MessageLookupByLibrary.simpleMessage("Migu"),
        "source_real_tx": MessageLookupByLibrary.simpleMessage("Tencent"),
        "source_real_wy": MessageLookupByLibrary.simpleMessage("Netease"),
        "stop": MessageLookupByLibrary.simpleMessage("Stop"),
        "stopped": MessageLookupByLibrary.simpleMessage("Stopped"),
        "storage_file_no_match": MessageLookupByLibrary.simpleMessage(
            "The selected file does not meet the requirements!"),
        "storage_file_no_select_file_failed_tip":
            MessageLookupByLibrary.simpleMessage(
                "Use the system file selectioner to select the file failure. Do you return to the built -in file selectioner of the software?"),
        "storage_permission_tip_disagree":
            MessageLookupByLibrary.simpleMessage("User Disagree"),
        "storage_permission_tip_disagree_ask_again":
            MessageLookupByLibrary.simpleMessage(
                "This feature cannot be used because you have permanently denied LX access to the phone storage.\nIf you want to continue, you need to go to System Permission Management Set Luo Xue’s storage permission to allow."),
        "storage_permission_tip_request": MessageLookupByLibrary.simpleMessage(
            "To use this function, you need to allow LX to access the phone storage. Do you agree and continue?"),
        "sync__dislike_mode_merge_tip_desc":
            MessageLookupByLibrary.simpleMessage(
                "Merge the content of the two lists and remove the duplicates"),
        "sync__dislike_mode_other_tip_desc":
            MessageLookupByLibrary.simpleMessage(
                "\"Cancel sync\" will not use the dislike list sync feature"),
        "sync__dislike_mode_overwrite_tip_desc":
            MessageLookupByLibrary.simpleMessage(
                "The list of overriddens will be replaced with the list of overriders"),
        "sync__dislike_mode_title": m33,
        "sync__list_mode_merge_tip_desc": MessageLookupByLibrary.simpleMessage(
            "Merge the lists on both sides together, the same songs will be removed (removed is the merged song), and different songs will be added."),
        "sync__list_mode_other_tip_desc": MessageLookupByLibrary.simpleMessage(
            "\"Cancel Sync\" will not use list sync."),
        "sync__list_mode_overwrite_tip_desc": MessageLookupByLibrary.simpleMessage(
            "The list with the same list ID of the covered person and the covered person will be deleted and replaced with the covered person\'s list (lists with different list IDs will be merged together). If you check Complete coverage, all lists of the covered person will be removed. \nand then replace with a list of overriders."),
        "sync__list_mode_title": m34,
        "sync__mode_merge_btn_local_remote":
            MessageLookupByLibrary.simpleMessage(
                "Local list merge remote list"),
        "sync__mode_merge_btn_remote_local":
            MessageLookupByLibrary.simpleMessage(
                "Remote List Merge Local List"),
        "sync__mode_merge_tip": MessageLookupByLibrary.simpleMessage("Merge: "),
        "sync__mode_other_label": MessageLookupByLibrary.simpleMessage("Other"),
        "sync__mode_other_tip": MessageLookupByLibrary.simpleMessage("Other: "),
        "sync__mode_overwrite":
            MessageLookupByLibrary.simpleMessage("Full coverage"),
        "sync__mode_overwrite_btn_cancel":
            MessageLookupByLibrary.simpleMessage("Cancel sync"),
        "sync__mode_overwrite_btn_local_remote":
            MessageLookupByLibrary.simpleMessage(
                "Local list override remote list"),
        "sync__mode_overwrite_btn_remote_local":
            MessageLookupByLibrary.simpleMessage(
                "Remote List Override Local List"),
        "sync__mode_overwrite_label":
            MessageLookupByLibrary.simpleMessage("Cover"),
        "sync__mode_overwrite_tip":
            MessageLookupByLibrary.simpleMessage("Over: "),
        "sync_status_disabled":
            MessageLookupByLibrary.simpleMessage("Not connected"),
        "theme_black": MessageLookupByLibrary.simpleMessage("Black"),
        "theme_blue": MessageLookupByLibrary.simpleMessage("Blue"),
        "theme_blue2": MessageLookupByLibrary.simpleMessage("Purple Blue"),
        "theme_blue_plus": MessageLookupByLibrary.simpleMessage("Blue Plus"),
        "theme_brown": MessageLookupByLibrary.simpleMessage("Brown"),
        "theme_china_ink": MessageLookupByLibrary.simpleMessage("China Ink"),
        "theme_green": MessageLookupByLibrary.simpleMessage("Green"),
        "theme_grey": MessageLookupByLibrary.simpleMessage("Grey"),
        "theme_happy_new_year":
            MessageLookupByLibrary.simpleMessage("New Year"),
        "theme_mid_autumn": MessageLookupByLibrary.simpleMessage("Mid-Autumn"),
        "theme_ming": MessageLookupByLibrary.simpleMessage("Ming"),
        "theme_naruto": MessageLookupByLibrary.simpleMessage("Naruto"),
        "theme_orange": MessageLookupByLibrary.simpleMessage("Orange"),
        "theme_pink": MessageLookupByLibrary.simpleMessage("Pink"),
        "theme_purple": MessageLookupByLibrary.simpleMessage("Purple"),
        "theme_red": MessageLookupByLibrary.simpleMessage("Red"),
        "timeout_exit_btn_cancel":
            MessageLookupByLibrary.simpleMessage("Cancel timing"),
        "timeout_exit_btn_update":
            MessageLookupByLibrary.simpleMessage("Update timing"),
        "timeout_exit_btn_wait_cancel":
            MessageLookupByLibrary.simpleMessage("Cancel exit"),
        "timeout_exit_btn_wait_tip": MessageLookupByLibrary.simpleMessage(
            "Timeout expired, waiting to exit..."),
        "timeout_exit_input_tip":
            MessageLookupByLibrary.simpleMessage("Enter countdown minutes"),
        "timeout_exit_label_isPlayed": MessageLookupByLibrary.simpleMessage(
            "Wait for the song to finish playing and then stop playing"),
        "timeout_exit_min": MessageLookupByLibrary.simpleMessage("Minutes"),
        "timeout_exit_tip_cancel": MessageLookupByLibrary.simpleMessage(
            "Timeout stop playing has been cancelled"),
        "timeout_exit_tip_max": m35,
        "timeout_exit_tip_off":
            MessageLookupByLibrary.simpleMessage("Set timer to stop playing"),
        "timeout_exit_tip_on": m36,
        "toggle_source": MessageLookupByLibrary.simpleMessage("Source change"),
        "toggle_source_failed": MessageLookupByLibrary.simpleMessage(
            "Failed to change the source, please try to manually search for the song in other sources to play"),
        "toggle_source_try": MessageLookupByLibrary.simpleMessage(
            "Try switching to another source..."),
        "understand":
            MessageLookupByLibrary.simpleMessage("Already understood 👌"),
        "user_api__init_failed_alert": m37,
        "user_api_add_failed_tip":
            MessageLookupByLibrary.simpleMessage("Invalid custom source file"),
        "user_api_allow_show_update_alert":
            MessageLookupByLibrary.simpleMessage(
                "Allow update popups to be displayed"),
        "user_api_btn_import": MessageLookupByLibrary.simpleMessage("Import"),
        "user_api_btn_import_local":
            MessageLookupByLibrary.simpleMessage("Local import"),
        "user_api_btn_import_online":
            MessageLookupByLibrary.simpleMessage("Online import"),
        "user_api_btn_import_online_input_confirm":
            MessageLookupByLibrary.simpleMessage("Import"),
        "user_api_btn_import_online_input_loading":
            MessageLookupByLibrary.simpleMessage("Importing..."),
        "user_api_btn_import_online_input_tip":
            MessageLookupByLibrary.simpleMessage("Please enter HTTP link"),
        "user_api_empty":
            MessageLookupByLibrary.simpleMessage("It’s actually empty here 😲"),
        "user_api_import_desc":
            MessageLookupByLibrary.simpleMessage("Select custom source file"),
        "user_api_import_failed_tip": m38,
        "user_api_import_success_tip":
            MessageLookupByLibrary.simpleMessage("Import successful 🎉"),
        "user_api_max_tip": MessageLookupByLibrary.simpleMessage(
            "A maximum of 20 sources can exist at the same time🤪\n\nIf you want to continue importing, please remove some old sources to make room."),
        "user_api_note": MessageLookupByLibrary.simpleMessage(
            "Tip: Although we have isolated the running environment of the script as much as possible, importing scripts containing malicious behaviors may still affect your system, so please import with caution."),
        "user_api_readme": MessageLookupByLibrary.simpleMessage(
            "Source writing instructions: "),
        "user_api_remove_tip": m39,
        "user_api_title": MessageLookupByLibrary.simpleMessage(
            "Custom source management (experimental)"),
        "user_api_update_alert": m40,
        "user_api_update_alert_open_url":
            MessageLookupByLibrary.simpleMessage("Open update address"),
        "version_btn_close": MessageLookupByLibrary.simpleMessage("Close"),
        "version_btn_downloading": m41,
        "version_btn_failed": MessageLookupByLibrary.simpleMessage("Retry"),
        "version_btn_ignore": MessageLookupByLibrary.simpleMessage("Ignore"),
        "version_btn_ignore_cancel":
            MessageLookupByLibrary.simpleMessage("Cancel ignore"),
        "version_btn_min":
            MessageLookupByLibrary.simpleMessage("Background download"),
        "version_btn_new": MessageLookupByLibrary.simpleMessage("Update"),
        "version_btn_unknown":
            MessageLookupByLibrary.simpleMessage("Project Homepage"),
        "version_btn_update": MessageLookupByLibrary.simpleMessage("Install"),
        "version_label_change_log":
            MessageLookupByLibrary.simpleMessage("Update description: "),
        "version_label_current_ver":
            MessageLookupByLibrary.simpleMessage("Current version: "),
        "version_label_history":
            MessageLookupByLibrary.simpleMessage("History version: "),
        "version_label_latest_ver":
            MessageLookupByLibrary.simpleMessage("Latest version: "),
        "version_tip_checking":
            MessageLookupByLibrary.simpleMessage("Checking for updates...⏳"),
        "version_tip_downloaded": MessageLookupByLibrary.simpleMessage(
            "The installation package has been downloaded."),
        "version_tip_failed": MessageLookupByLibrary.simpleMessage(
            "The download of the installation package failed. You can try again or go to the project address to manually download the new version update."),
        "version_tip_latest": MessageLookupByLibrary.simpleMessage(
            "The software is up to date, please enjoy it~🥂"),
        "version_tip_min": MessageLookupByLibrary.simpleMessage(
            "It has been switched to background download, you can go to Settings-Software Update and reopen this pop-up window"),
        "version_tip_unknown": MessageLookupByLibrary.simpleMessage(
            "Failed to obtain the latest version information, it is recommended to manually go to the project address to check if there is a new version"),
        "version_title_checking":
            MessageLookupByLibrary.simpleMessage("⏳ Checking for updates ⏳"),
        "version_title_failed":
            MessageLookupByLibrary.simpleMessage("❌ Download failed ❌"),
        "version_title_latest": MessageLookupByLibrary.simpleMessage(
            "🎉 The current version is already the latest 🎊"),
        "version_title_new":
            MessageLookupByLibrary.simpleMessage("🌟 New version found 🌟"),
        "version_title_unknown": MessageLookupByLibrary.simpleMessage(
            "❓ Failed to get the latest version information ❓"),
        "version_title_update":
            MessageLookupByLibrary.simpleMessage("🚀 Program update 🚀")
      };
}
