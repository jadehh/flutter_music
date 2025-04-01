// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Flutter Music`
  String get app_name {
    return Intl.message(
      'Flutter Music',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Add to...`
  String get add_to {
    return Intl.message(
      'Add to...',
      name: 'add_to',
      desc: '',
      args: [],
    );
  }

  /// `Agree`
  String get agree {
    return Intl.message(
      'Agree',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `To turn on`
  String get agree_go {
    return Intl.message(
      'To turn on',
      name: 'agree_go',
      desc: '',
      args: [],
    );
  }

  /// `Go to settings`
  String get agree_to {
    return Intl.message(
      'Go to settings',
      name: 'agree_to',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back_home {
    return Intl.message(
      'Back',
      name: 'back_home',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `No, no, no, wrong click`
  String get cancel_button_text_2 {
    return Intl.message(
      'No, no, no, wrong click',
      name: 'cancel_button_text_2',
      desc: '',
      args: [],
    );
  }

  /// `Change Position`
  String get change_position {
    return Intl.message(
      'Change Position',
      name: 'change_position',
      desc: '',
      args: [],
    );
  }

  /// `Change the position of the list`
  String get change_position_list_title {
    return Intl.message(
      'Change the position of the list',
      name: 'change_position_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Adjust the position of the selected {num} song to`
  String change_position_music_multi_title(Object num) {
    return Intl.message(
      'Adjust the position of the selected $num song to',
      name: 'change_position_music_multi_title',
      desc: '',
      args: [num],
    );
  }

  /// `Adjust the position of {name} to`
  String change_position_music_title(Object name) {
    return Intl.message(
      'Adjust the position of $name to',
      name: 'change_position_music_title',
      desc: '',
      args: [name],
    );
  }

  /// `Please enter a new position`
  String get change_position_tip {
    return Intl.message(
      'Please enter a new position',
      name: 'change_position_tip',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Collect`
  String get collect {
    return Intl.message(
      'Collect',
      name: 'collect',
      desc: '',
      args: [],
    );
  }

  /// `Collection Songlist`
  String get collect_songlist {
    return Intl.message(
      'Collection Songlist',
      name: 'collect_songlist',
      desc: '',
      args: [],
    );
  }

  /// `Collection success`
  String get collect_success {
    return Intl.message(
      'Collection success',
      name: 'collect_success',
      desc: '',
      args: [],
    );
  }

  /// `Collection Toplist`
  String get collect_toplist {
    return Intl.message(
      'Collection Toplist',
      name: 'collect_toplist',
      desc: '',
      args: [],
    );
  }

  /// `Close comments`
  String get comment_hide_text {
    return Intl.message(
      'Close comments',
      name: 'comment_hide_text',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'comment_not support' key

  /// `This is already {name}'s comment`
  String comment_refresh(Object name) {
    return Intl.message(
      'This is already $name\'s comment',
      name: 'comment_refresh',
      desc: '',
      args: [name],
    );
  }

  /// `display image`
  String get comment_show_image {
    return Intl.message(
      'display image',
      name: 'comment_show_image',
      desc: '',
      args: [],
    );
  }

  /// `Expand comment`
  String get comment_show_text {
    return Intl.message(
      'Expand comment',
      name: 'comment_show_text',
      desc: '',
      args: [],
    );
  }

  /// `Hot {total}`
  String comment_tab_hot(Object total) {
    return Intl.message(
      'Hot $total',
      name: 'comment_tab_hot',
      desc: '',
      args: [total],
    );
  }

  /// `New {total}`
  String comment_tab_new(Object total) {
    return Intl.message(
      'New $total',
      name: 'comment_tab_new',
      desc: '',
      args: [total],
    );
  }

  /// `{name}-{singer}'s comment`
  String comment_title(Object name, Object singer) {
    return Intl.message(
      '$name-$singer\'s comment',
      name: 'comment_title',
      desc: '',
      args: [name, singer],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get confirm_button_text {
    return Intl.message(
      'Yes',
      name: 'confirm_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Just to double check, do you really want to do this?`
  String get confirm_tip {
    return Intl.message(
      'Just to double check, do you really want to do this?',
      name: 'confirm_tip',
      desc: '',
      args: [],
    );
  }

  /// `Share song`
  String get copy_name {
    return Intl.message(
      'Share song',
      name: 'copy_name',
      desc: '',
      args: [],
    );
  }

  /// `Copied`
  String get copy_name_tip {
    return Intl.message(
      'Copied',
      name: 'copy_name_tip',
      desc: '',
      args: [],
    );
  }

  /// `Create new folder`
  String get create_new_folder {
    return Intl.message(
      'Create new folder',
      name: 'create_new_folder',
      desc: '',
      args: [],
    );
  }

  /// `The name entered is invalid`
  String get create_new_folder_error_tip {
    return Intl.message(
      'The name entered is invalid',
      name: 'create_new_folder_error_tip',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a new folder name`
  String get create_new_folder_tip {
    return Intl.message(
      'Please enter a new folder name',
      name: 'create_new_folder_tip',
      desc: '',
      args: [],
    );
  }

  /// `{num} hours ago`
  String date_format_hour(Object num) {
    return Intl.message(
      '$num hours ago',
      name: 'date_format_hour',
      desc: '',
      args: [num],
    );
  }

  /// `{num} minutes ago`
  String date_format_minute(Object num) {
    return Intl.message(
      '$num minutes ago',
      name: 'date_format_minute',
      desc: '',
      args: [num],
    );
  }

  /// `{num} seconds ago`
  String date_format_second(Object num) {
    return Intl.message(
      '$num seconds ago',
      name: 'date_format_second',
      desc: '',
      args: [num],
    );
  }

  /// `Call failed: {message}`
  String deep_link__handle_error_tip(Object message) {
    return Intl.message(
      'Call failed: $message',
      name: 'deep_link__handle_error_tip',
      desc: '',
      args: [message],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get dialog_cancel {
    return Intl.message(
      'No',
      name: 'dialog_cancel',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get dialog_confirm {
    return Intl.message(
      'OK',
      name: 'dialog_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Disagree`
  String get disagree {
    return Intl.message(
      'Disagree',
      name: 'disagree',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled...`
  String get disagree_tip {
    return Intl.message(
      'Cancelled...',
      name: 'disagree_tip',
      desc: '',
      args: [],
    );
  }

  /// `Dislike`
  String get dislike {
    return Intl.message(
      'Dislike',
      name: 'dislike',
      desc: '',
      args: [],
    );
  }

  /// `You have previously favorited the list [{name}], do you want to update the songs?`
  String duplicate_list_tip(Object name) {
    return Intl.message(
      'You have previously favorited the list [$name], do you want to update the songs?',
      name: 'duplicate_list_tip',
      desc: '',
      args: [name],
    );
  }

  /// `Edit tag`
  String get edit_metadata {
    return Intl.message(
      'Edit tag',
      name: 'edit_metadata',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to quit the app?`
  String get exit_app_tip {
    return Intl.message(
      'Are you sure you want to quit the app?',
      name: 'exit_app_tip',
      desc: '',
      args: [],
    );
  }

  /// `LX Music is not on the list of ignored battery optimization, which may cause the problem of being suspended by the system when playing music in the background. Do you want to add LX Music to the whitelist?`
  String get ignoring_battery_optimization_check_tip {
    return Intl.message(
      'LX Music is not on the list of ignored battery optimization, which may cause the problem of being suspended by the system when playing music in the background. Do you want to add LX Music to the whitelist?',
      name: 'ignoring_battery_optimization_check_tip',
      desc: '',
      args: [],
    );
  }

  /// `Background running permission setting reminder`
  String get ignoring_battery_optimization_check_title {
    return Intl.message(
      'Background running permission setting reminder',
      name: 'ignoring_battery_optimization_check_title',
      desc: '',
      args: [],
    );
  }

  /// `Don't input indiscriminately 😡`
  String get input_error {
    return Intl.message(
      'Don\'t input indiscriminately 😡',
      name: 'input_error',
      desc: '',
      args: [],
    );
  }

  /// `{value} Music`
  String list_music_count_format(Object value) {
    return Intl.message(
      '$value Music',
      name: 'list_music_count_format',
      desc: '',
      args: [value],
    );
  }

  /// `Add the song(s) to {name}`
  String list_add_btn_title(Object name) {
    return Intl.message(
      'Add the song(s) to $name',
      name: 'list_add_btn_title',
      desc: '',
      args: [name],
    );
  }

  /// `This song already exists in the list, don't click me again~😡`
  String get list_add_tip_exists {
    return Intl.message(
      'This song already exists in the list, don\'t click me again~😡',
      name: 'list_add_tip_exists',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get list_add_title_first_add {
    return Intl.message(
      'Add',
      name: 'list_add_title_first_add',
      desc: '',
      args: [],
    );
  }

  /// `Move`
  String get list_add_title_first_move {
    return Intl.message(
      'Move',
      name: 'list_add_title_first_move',
      desc: '',
      args: [],
    );
  }

  /// `to...`
  String get list_add_title_last {
    return Intl.message(
      'to...',
      name: 'list_add_title_last',
      desc: '',
      args: [],
    );
  }

  /// `Create a new list`
  String get list_create {
    return Intl.message(
      'Create a new list',
      name: 'list_create',
      desc: '',
      args: [],
    );
  }

  /// `What name do you think of...`
  String get list_create_input_placeholder {
    return Intl.message(
      'What name do you think of...',
      name: 'list_create_input_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `A list with the same name already exists. Do you want to continue creating it?`
  String get list_duplicate_tip {
    return Intl.message(
      'A list with the same name already exists. Do you want to continue creating it?',
      name: 'list_duplicate_tip',
      desc: '',
      args: [],
    );
  }

  /// `add failed`
  String get list_edit_action_tip_add_failed {
    return Intl.message(
      'add failed',
      name: 'list_edit_action_tip_add_failed',
      desc: '',
      args: [],
    );
  }

  /// `Added successfully`
  String get list_edit_action_tip_add_success {
    return Intl.message(
      'Added successfully',
      name: 'list_edit_action_tip_add_success',
      desc: '',
      args: [],
    );
  }

  /// `This song already exists in this list`
  String get list_edit_action_tip_exist {
    return Intl.message(
      'This song already exists in this list',
      name: 'list_edit_action_tip_exist',
      desc: '',
      args: [],
    );
  }

  /// `failed to move`
  String get list_edit_action_tip_move_failed {
    return Intl.message(
      'failed to move',
      name: 'list_edit_action_tip_move_failed',
      desc: '',
      args: [],
    );
  }

  /// `Moved successfully`
  String get list_edit_action_tip_move_success {
    return Intl.message(
      'Moved successfully',
      name: 'list_edit_action_tip_move_success',
      desc: '',
      args: [],
    );
  }

  /// `Removed successfully`
  String get list_edit_action_tip_remove_success {
    return Intl.message(
      'Removed successfully',
      name: 'list_edit_action_tip_remove_success',
      desc: '',
      args: [],
    );
  }

  /// `In The End`
  String get list_end {
    return Intl.message(
      'In The End',
      name: 'list_end',
      desc: '',
      args: [],
    );
  }

  /// `Loading failed😥, click to try to reload`
  String get list_error {
    return Intl.message(
      'Loading failed😥, click to try to reload',
      name: 'list_error',
      desc: '',
      args: [],
    );
  }

  /// `Export`
  String get list_export {
    return Intl.message(
      'Export',
      name: 'list_export',
      desc: '',
      args: [],
    );
  }

  /// `Choose where to save the list file`
  String get list_export_part_desc {
    return Intl.message(
      'Choose where to save the list file',
      name: 'list_export_part_desc',
      desc: '',
      args: [],
    );
  }

  /// `Import`
  String get list_import {
    return Intl.message(
      'Import',
      name: 'list_import',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get list_import_part_button_cancel {
    return Intl.message(
      'No',
      name: 'list_import_part_button_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Overwrite`
  String get list_import_part_button_confirm {
    return Intl.message(
      'Overwrite',
      name: 'list_import_part_button_confirm',
      desc: '',
      args: [],
    );
  }

  /// `The imported list ({importName}) has the same ID as the local list ({localName}). Do you overwrite the local list?`
  String list_import_part_confirm(Object importName, Object localName) {
    return Intl.message(
      'The imported list ($importName) has the same ID as the local list ($localName). Do you overwrite the local list?',
      name: 'list_import_part_confirm',
      desc: '',
      args: [importName, localName],
    );
  }

  /// `Select list file`
  String get list_import_part_desc {
    return Intl.message(
      'Select list file',
      name: 'list_import_part_desc',
      desc: '',
      args: [],
    );
  }

  /// `This is a backup file of all data, you need to go here to import:\nSettings -> Backup & Restore -> List Data -> Import List`
  String get list_import_tip__alldata {
    return Intl.message(
      'This is a backup file of all data, you need to go here to import:\nSettings -> Backup & Restore -> List Data -> Import List',
      name: 'list_import_tip__alldata',
      desc: '',
      args: [],
    );
  }

  /// `Import failed`
  String get list_import_tip__failed {
    return Intl.message(
      'Import failed',
      name: 'list_import_tip__failed',
      desc: '',
      args: [],
    );
  }

  /// `This is a list backup file, you need to go here to import:\nSettings -> Backup & Restore -> List Data -> Import List`
  String get list_import_tip__playlist {
    return Intl.message(
      'This is a list backup file, you need to go here to import:\nSettings -> Backup & Restore -> List Data -> Import List',
      name: 'list_import_tip__playlist',
      desc: '',
      args: [],
    );
  }

  /// `This is a single list file, you need to go here to import:\nMy Lists -> Click the menu button to the right of any list name -> Select Import from the pop-up menu`
  String get list_import_tip__playlist_part {
    return Intl.message(
      'This is a single list file, you need to go here to import:\nMy Lists -> Click the menu button to the right of any list name -> Select Import from the pop-up menu',
      name: 'list_import_tip__playlist_part',
      desc: '',
      args: [],
    );
  }

  /// `This is a settings backup file, the mobile terminal does not support importing such files`
  String get list_import_tip__setting {
    return Intl.message(
      'This is a settings backup file, the mobile terminal does not support importing such files',
      name: 'list_import_tip__setting',
      desc: '',
      args: [],
    );
  }

  /// `Unknown file type, please try upgrading to the latest version and try again`
  String get list_import_tip__unknown {
    return Intl.message(
      'Unknown file type, please try upgrading to the latest version and try again',
      name: 'list_import_tip__unknown',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get list_loading {
    return Intl.message(
      'Loading...',
      name: 'list_loading',
      desc: '',
      args: [],
    );
  }

  /// `Add selected`
  String get list_multi_add_title_first_add {
    return Intl.message(
      'Add selected',
      name: 'list_multi_add_title_first_add',
      desc: '',
      args: [],
    );
  }

  /// `Move the selected one`
  String get list_multi_add_title_first_move {
    return Intl.message(
      'Move the selected one',
      name: 'list_multi_add_title_first_move',
      desc: '',
      args: [],
    );
  }

  /// `First song to...`
  String get list_multi_add_title_last {
    return Intl.message(
      'First song to...',
      name: 'list_multi_add_title_last',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get list_remove {
    return Intl.message(
      'Remove',
      name: 'list_remove',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to remove the selected {num} songs?`
  String list_remove_music_multi_tip(Object num) {
    return Intl.message(
      'Do you really want to remove the selected $num songs?',
      name: 'list_remove_music_multi_tip',
      desc: '',
      args: [num],
    );
  }

  /// `Do you really want to remove {name}?`
  String list_remove_tip(Object name) {
    return Intl.message(
      'Do you really want to remove $name?',
      name: 'list_remove_tip',
      desc: '',
      args: [name],
    );
  }

  /// `Yes, that's right`
  String get list_remove_tip_button {
    return Intl.message(
      'Yes, that\'s right',
      name: 'list_remove_tip_button',
      desc: '',
      args: [],
    );
  }

  /// `Rename`
  String get list_rename {
    return Intl.message(
      'Rename',
      name: 'list_rename',
      desc: '',
      args: [],
    );
  }

  /// `Rename List`
  String get list_rename_title {
    return Intl.message(
      'Rename List',
      name: 'list_rename_title',
      desc: '',
      args: [],
    );
  }

  /// `Select All`
  String get list_select_all {
    return Intl.message(
      'Select All',
      name: 'list_select_all',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get list_select_cancel {
    return Intl.message(
      'Cancel',
      name: 'list_select_cancel',
      desc: '',
      args: [],
    );
  }

  /// `add local songs`
  String get list_select_local_file {
    return Intl.message(
      'add local songs',
      name: 'list_select_local_file',
      desc: '',
      args: [],
    );
  }

  /// `Select local song folder`
  String get list_select_local_file_desc {
    return Intl.message(
      'Select local song folder',
      name: 'list_select_local_file_desc',
      desc: '',
      args: [],
    );
  }

  /// `No songs found in current directory`
  String get list_select_local_file_empty_tip {
    return Intl.message(
      'No songs found in current directory',
      name: 'list_select_local_file_empty_tip',
      desc: '',
      args: [],
    );
  }

  /// `A total of {total} songs were found, {success} were added successfully, and {failed} were added. You can go to the error log to view the songs that failed to be added.`
  String list_select_local_file_result_failed_tip(
      Object total, Object success, Object failed) {
    return Intl.message(
      'A total of $total songs were found, $success were added successfully, and $failed were added. You can go to the error log to view the songs that failed to be added.',
      name: 'list_select_local_file_result_failed_tip',
      desc: '',
      args: [total, success, failed],
    );
  }

  /// `{Total} songs found, all added!`
  String list_select_local_file_result_tip(Object Total) {
    return Intl.message(
      '$Total songs found, all added!',
      name: 'list_select_local_file_result_tip',
      desc: '',
      args: [Total],
    );
  }

  /// `A total of {total} files that meet the requirements have been found and have been quickly added to the current list. Now we will enter the file tag reading process. Please do not exit the application!`
  String list_select_local_file_temp_add_tip(Object total) {
    return Intl.message(
      'A total of $total files that meet the requirements have been found and have been quickly added to the current list. Now we will enter the file tag reading process. Please do not exit the application!',
      name: 'list_select_local_file_temp_add_tip',
      desc: '',
      args: [total],
    );
  }

  /// `range`
  String get list_select_range {
    return Intl.message(
      'range',
      name: 'list_select_range',
      desc: '',
      args: [],
    );
  }

  /// `Single Select`
  String get list_select_single {
    return Intl.message(
      'Single Select',
      name: 'list_select_single',
      desc: '',
      args: [],
    );
  }

  /// `Reverse Selection`
  String get list_select_unall {
    return Intl.message(
      'Reverse Selection',
      name: 'list_select_unall',
      desc: '',
      args: [],
    );
  }

  /// `Sort songs`
  String get list_sort {
    return Intl.message(
      'Sort songs',
      name: 'list_sort',
      desc: '',
      args: [],
    );
  }

  /// `Album name`
  String get list_sort_modal_by_album {
    return Intl.message(
      'Album name',
      name: 'list_sort_modal_by_album',
      desc: '',
      args: [],
    );
  }

  /// `Descending order`
  String get list_sort_modal_by_down {
    return Intl.message(
      'Descending order',
      name: 'list_sort_modal_by_down',
      desc: '',
      args: [],
    );
  }

  /// `Sort field`
  String get list_sort_modal_by_field {
    return Intl.message(
      'Sort field',
      name: 'list_sort_modal_by_field',
      desc: '',
      args: [],
    );
  }

  /// `Song name`
  String get list_sort_modal_by_name {
    return Intl.message(
      'Song name',
      name: 'list_sort_modal_by_name',
      desc: '',
      args: [],
    );
  }

  /// `Randomly shuffle`
  String get list_sort_modal_by_random {
    return Intl.message(
      'Randomly shuffle',
      name: 'list_sort_modal_by_random',
      desc: '',
      args: [],
    );
  }

  /// `Singer name`
  String get list_sort_modal_by_singer {
    return Intl.message(
      'Singer name',
      name: 'list_sort_modal_by_singer',
      desc: '',
      args: [],
    );
  }

  /// `Song source`
  String get list_sort_modal_by_source {
    return Intl.message(
      'Song source',
      name: 'list_sort_modal_by_source',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get list_sort_modal_by_time {
    return Intl.message(
      'Duration',
      name: 'list_sort_modal_by_time',
      desc: '',
      args: [],
    );
  }

  /// `Sort category`
  String get list_sort_modal_by_type {
    return Intl.message(
      'Sort category',
      name: 'list_sort_modal_by_type',
      desc: '',
      args: [],
    );
  }

  /// `Ascending order`
  String get list_sort_modal_by_up {
    return Intl.message(
      'Ascending order',
      name: 'list_sort_modal_by_up',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get list_sync {
    return Intl.message(
      'Update',
      name: 'list_sync',
      desc: '',
      args: [],
    );
  }

  /// `This will replace the songs in {name} with the songs in the online list, are you sure you want to update?`
  String list_sync_confirm_tip(Object name) {
    return Intl.message(
      'This will replace the songs in $name with the songs in the online list, are you sure you want to update?',
      name: 'list_sync_confirm_tip',
      desc: '',
      args: [name],
    );
  }

  /// `Temp list`
  String get list_temp {
    return Intl.message(
      'Temp list',
      name: 'list_temp',
      desc: '',
      args: [],
    );
  }

  /// `{name} failed to update`
  String list_update_error(Object name) {
    return Intl.message(
      '$name failed to update',
      name: 'list_update_error',
      desc: '',
      args: [name],
    );
  }

  /// `{name} updated successfully`
  String list_update_success(Object name) {
    return Intl.message(
      '$name updated successfully',
      name: 'list_update_success',
      desc: '',
      args: [name],
    );
  }

  /// `updating`
  String get list_updating {
    return Intl.message(
      'updating',
      name: 'list_updating',
      desc: '',
      args: [],
    );
  }

  /// `repeat song`
  String get lists__duplicate {
    return Intl.message(
      'repeat song',
      name: 'lists__duplicate',
      desc: '',
      args: [],
    );
  }

  /// `Added`
  String get lists_dislike_music_add_tip {
    return Intl.message(
      'Added',
      name: 'lists_dislike_music_add_tip',
      desc: '',
      args: [],
    );
  }

  /// `Do you really not like {singer}'s {name}?`
  String lists_dislike_music_singer_tip(Object singer, Object name) {
    return Intl.message(
      'Do you really not like $singer\'s $name?',
      name: 'lists_dislike_music_singer_tip',
      desc: '',
      args: [singer, name],
    );
  }

  /// `Do you really dislike {name}?`
  String lists_dislike_music_tip(Object name) {
    return Intl.message(
      'Do you really dislike $name?',
      name: 'lists_dislike_music_tip',
      desc: '',
      args: [name],
    );
  }

  /// `Ah, loading failed 😥`
  String get load_failed {
    return Intl.message(
      'Ah, loading failed 😥',
      name: 'load_failed',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `From {location}`
  String location(Object location) {
    return Intl.message(
      'From $location',
      name: 'location',
      desc: '',
      args: [location],
    );
  }

  /// `Failed to get lyrics`
  String get lyric__load_error {
    return Intl.message(
      'Failed to get lyrics',
      name: 'lyric__load_error',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get metadata_edit_modal_confirm {
    return Intl.message(
      'Save',
      name: 'metadata_edit_modal_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Saving failed, please view the error log for details.`
  String get metadata_edit_modal_failed {
    return Intl.message(
      'Saving failed, please view the error log for details.',
      name: 'metadata_edit_modal_failed',
      desc: '',
      args: [],
    );
  }

  /// `File name`
  String get metadata_edit_modal_file_name {
    return Intl.message(
      'File name',
      name: 'metadata_edit_modal_file_name',
      desc: '',
      args: [],
    );
  }

  /// `File path`
  String get metadata_edit_modal_file_path {
    return Intl.message(
      'File path',
      name: 'metadata_edit_modal_file_path',
      desc: '',
      args: [],
    );
  }

  /// `Album name`
  String get metadata_edit_modal_form_album_name {
    return Intl.message(
      'Album name',
      name: 'metadata_edit_modal_form_album_name',
      desc: '',
      args: [],
    );
  }

  /// `LRC Lyrics`
  String get metadata_edit_modal_form_lyric {
    return Intl.message(
      'LRC Lyrics',
      name: 'metadata_edit_modal_form_lyric',
      desc: '',
      args: [],
    );
  }

  /// `Online matching`
  String get metadata_edit_modal_form_match_lyric {
    return Intl.message(
      'Online matching',
      name: 'metadata_edit_modal_form_match_lyric',
      desc: '',
      args: [],
    );
  }

  /// `Online lyrics matching failed`
  String get metadata_edit_modal_form_match_lyric_failed {
    return Intl.message(
      'Online lyrics matching failed',
      name: 'metadata_edit_modal_form_match_lyric_failed',
      desc: '',
      args: [],
    );
  }

  /// `Lyrics matched successfully🎉`
  String get metadata_edit_modal_form_match_lyric_success {
    return Intl.message(
      'Lyrics matched successfully🎉',
      name: 'metadata_edit_modal_form_match_lyric_success',
      desc: '',
      args: [],
    );
  }

  /// `Online matching`
  String get metadata_edit_modal_form_match_pic {
    return Intl.message(
      'Online matching',
      name: 'metadata_edit_modal_form_match_pic',
      desc: '',
      args: [],
    );
  }

  /// `Failed to match cover online`
  String get metadata_edit_modal_form_match_pic_failed {
    return Intl.message(
      'Failed to match cover online',
      name: 'metadata_edit_modal_form_match_pic_failed',
      desc: '',
      args: [],
    );
  }

  /// `Cover match successful🎉`
  String get metadata_edit_modal_form_match_pic_success {
    return Intl.message(
      'Cover match successful🎉',
      name: 'metadata_edit_modal_form_match_pic_success',
      desc: '',
      args: [],
    );
  }

  /// `Song name`
  String get metadata_edit_modal_form_name {
    return Intl.message(
      'Song name',
      name: 'metadata_edit_modal_form_name',
      desc: '',
      args: [],
    );
  }

  /// `Parse song name and artist from file name`
  String get metadata_edit_modal_form_parse_name {
    return Intl.message(
      'Parse song name and artist from file name',
      name: 'metadata_edit_modal_form_parse_name',
      desc: '',
      args: [],
    );
  }

  /// `Name - Artist`
  String get metadata_edit_modal_form_parse_name_singer {
    return Intl.message(
      'Name - Artist',
      name: 'metadata_edit_modal_form_parse_name_singer',
      desc: '',
      args: [],
    );
  }

  /// `Artist - Name`
  String get metadata_edit_modal_form_parse_singer_name {
    return Intl.message(
      'Artist - Name',
      name: 'metadata_edit_modal_form_parse_singer_name',
      desc: '',
      args: [],
    );
  }

  /// `Song cover`
  String get metadata_edit_modal_form_pic {
    return Intl.message(
      'Song cover',
      name: 'metadata_edit_modal_form_pic',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get metadata_edit_modal_form_remove_lyric {
    return Intl.message(
      'Clear',
      name: 'metadata_edit_modal_form_remove_lyric',
      desc: '',
      args: [],
    );
  }

  /// `Remove image`
  String get metadata_edit_modal_form_remove_pic {
    return Intl.message(
      'Remove image',
      name: 'metadata_edit_modal_form_remove_pic',
      desc: '',
      args: [],
    );
  }

  /// `Select Image`
  String get metadata_edit_modal_form_select_pic {
    return Intl.message(
      'Select Image',
      name: 'metadata_edit_modal_form_select_pic',
      desc: '',
      args: [],
    );
  }

  /// `Select song cover image`
  String get metadata_edit_modal_form_select_pic_title {
    return Intl.message(
      'Select song cover image',
      name: 'metadata_edit_modal_form_select_pic_title',
      desc: '',
      args: [],
    );
  }

  /// `Artist`
  String get metadata_edit_modal_form_singer {
    return Intl.message(
      'Artist',
      name: 'metadata_edit_modal_form_singer',
      desc: '',
      args: [],
    );
  }

  /// `Writing...`
  String get metadata_edit_modal_processing {
    return Intl.message(
      'Writing...',
      name: 'metadata_edit_modal_processing',
      desc: '',
      args: [],
    );
  }

  /// `Saved successfully`
  String get metadata_edit_modal_success {
    return Intl.message(
      'Saved successfully',
      name: 'metadata_edit_modal_success',
      desc: '',
      args: [],
    );
  }

  /// `Song name cannot be empty`
  String get metadata_edit_modal_tip {
    return Intl.message(
      'Song name cannot be empty',
      name: 'metadata_edit_modal_tip',
      desc: '',
      args: [],
    );
  }

  /// `Edit song tags`
  String get metadata_edit_modal_title {
    return Intl.message(
      'Edit song tags',
      name: 'metadata_edit_modal_title',
      desc: '',
      args: [],
    );
  }

  /// `Move to...`
  String get move_to {
    return Intl.message(
      'Move to...',
      name: 'move_to',
      desc: '',
      args: [],
    );
  }

  /// `Song page`
  String get music_source_detail {
    return Intl.message(
      'Song page',
      name: 'music_source_detail',
      desc: '',
      args: [],
    );
  }

  /// `Name: {name}`
  String name(Object name) {
    return Intl.message(
      'Name: $name',
      name: 'name',
      desc: '',
      args: [name],
    );
  }

  /// `Exit application`
  String get nav_exit {
    return Intl.message(
      'Exit application',
      name: 'nav_exit',
      desc: '',
      args: [],
    );
  }

  /// `Collection`
  String get nav_love {
    return Intl.message(
      'Collection',
      name: 'nav_love',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get nav_search {
    return Intl.message(
      'Search',
      name: 'nav_search',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get nav_setting {
    return Intl.message(
      'Setting',
      name: 'nav_setting',
      desc: '',
      args: [],
    );
  }

  /// `Song list`
  String get nav_songlist {
    return Intl.message(
      'Song list',
      name: 'nav_songlist',
      desc: '',
      args: [],
    );
  }

  /// `Leaderboard`
  String get nav_top {
    return Intl.message(
      'Leaderboard',
      name: 'nav_top',
      desc: '',
      args: [],
    );
  }

  /// `Never show again`
  String get never_show {
    return Intl.message(
      'Never show again',
      name: 'never_show',
      desc: '',
      args: [],
    );
  }

  /// `The list is empty...`
  String get no_item {
    return Intl.message(
      'The list is empty...',
      name: 'no_item',
      desc: '',
      args: [],
    );
  }

  /// `You have not allowed LX Music to display notifications, or the Music Service in the LX Music notification settings has been disabled, which will prevent you from using the notification bar to pause, switch songs, etc. Do you want to enable it?`
  String get notifications_check_tip {
    return Intl.message(
      'You have not allowed LX Music to display notifications, or the Music Service in the LX Music notification settings has been disabled, which will prevent you from using the notification bar to pause, switch songs, etc. Do you want to enable it?',
      name: 'notifications_check_tip',
      desc: '',
      args: [],
    );
  }

  /// `Notification permission reminder`
  String get notifications_check_title {
    return Intl.message(
      'Notification permission reminder',
      name: 'notifications_check_title',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `The entered path is illegal`
  String get open_storage_error_tip {
    return Intl.message(
      'The entered path is illegal',
      name: 'open_storage_error_tip',
      desc: '',
      args: [],
    );
  }

  /// `External memory card not found, please manually enter the path below to specify the external memory`
  String get open_storage_not_found_title {
    return Intl.message(
      'External memory card not found, please manually enter the path below to specify the external memory',
      name: 'open_storage_not_found_title',
      desc: '',
      args: [],
    );
  }

  /// `Failed to select storage path: {msg}`
  String open_storage_select_managed_folder_failed_tip(Object msg) {
    return Intl.message(
      'Failed to select storage path: $msg',
      name: 'open_storage_select_managed_folder_failed_tip',
      desc: '',
      args: [msg],
    );
  }

  /// `Open storage path`
  String get open_storage_select_path {
    return Intl.message(
      'Open storage path',
      name: 'open_storage_select_path',
      desc: '',
      args: [],
    );
  }

  /// `Tip: For external storage, if you still cannot access it after granting storage permissions, you can click the button below to select the path to allow access.`
  String get open_storage_select_path_tip {
    return Intl.message(
      'Tip: For external storage, if you still cannot access it after granting storage permissions, you can click the button below to select the path to allow access.',
      name: 'open_storage_select_path_tip',
      desc: '',
      args: [],
    );
  }

  /// `Enter storage path`
  String get open_storage_tip {
    return Intl.message(
      'Enter storage path',
      name: 'open_storage_tip',
      desc: '',
      args: [],
    );
  }

  /// `Please manually enter the path below to specify the external storage`
  String get open_storage_title {
    return Intl.message(
      'Please manually enter the path below to specify the external storage',
      name: 'open_storage_title',
      desc: '',
      args: [],
    );
  }

  /// `Parent directory`
  String get parent_dir_name {
    return Intl.message(
      'Parent directory',
      name: 'parent_dir_name',
      desc: '',
      args: [],
    );
  }

  /// `Pause`
  String get pause {
    return Intl.message(
      'Pause',
      name: 'pause',
      desc: '',
      args: [],
    );
  }

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `Play all`
  String get play_all {
    return Intl.message(
      'Play all',
      name: 'play_all',
      desc: '',
      args: [],
    );
  }

  /// `Lyric Alignment`
  String get play_detail_setting_lrc_align {
    return Intl.message(
      'Lyric Alignment',
      name: 'play_detail_setting_lrc_align',
      desc: '',
      args: [],
    );
  }

  /// `Center`
  String get play_detail_setting_lrc_align_center {
    return Intl.message(
      'Center',
      name: 'play_detail_setting_lrc_align_center',
      desc: '',
      args: [],
    );
  }

  /// `Left`
  String get play_detail_setting_lrc_align_left {
    return Intl.message(
      'Left',
      name: 'play_detail_setting_lrc_align_left',
      desc: '',
      args: [],
    );
  }

  /// `Right`
  String get play_detail_setting_lrc_align_right {
    return Intl.message(
      'Right',
      name: 'play_detail_setting_lrc_align_right',
      desc: '',
      args: [],
    );
  }

  /// `Lyric font size`
  String get play_detail_setting_lrc_font_size {
    return Intl.message(
      'Lyric font size',
      name: 'play_detail_setting_lrc_font_size',
      desc: '',
      args: [],
    );
  }

  /// `Playback rate`
  String get play_detail_setting_playback_rate {
    return Intl.message(
      'Playback rate',
      name: 'play_detail_setting_playback_rate',
      desc: '',
      args: [],
    );
  }

  /// `reset`
  String get play_detail_setting_playback_rate_reset {
    return Intl.message(
      'reset',
      name: 'play_detail_setting_playback_rate_reset',
      desc: '',
      args: [],
    );
  }

  /// `Allows to adjust playback progress by lyrics`
  String get play_detail_setting_show_lyric_progress_setting {
    return Intl.message(
      'Allows to adjust playback progress by lyrics',
      name: 'play_detail_setting_show_lyric_progress_setting',
      desc: '',
      args: [],
    );
  }

  /// `Player settings`
  String get play_detail_setting_title {
    return Intl.message(
      'Player settings',
      name: 'play_detail_setting_title',
      desc: '',
      args: [],
    );
  }

  /// `Volume`
  String get play_detail_setting_volume {
    return Intl.message(
      'Volume',
      name: 'play_detail_setting_volume',
      desc: '',
      args: [],
    );
  }

  /// `What do you want? No, this function has not been implemented yet 😛, But you can try to locate the currently playing song by long pressing (only valid for playing songs in "My List")`
  String get play_detail_todo_tip {
    return Intl.message(
      'What do you want? No, this function has not been implemented yet 😛, But you can try to locate the currently playing song by long pressing (only valid for playing songs in "My List")',
      name: 'play_detail_todo_tip',
      desc: '',
      args: [],
    );
  }

  /// `Play later`
  String get play_later {
    return Intl.message(
      'Play later',
      name: 'play_later',
      desc: '',
      args: [],
    );
  }

  /// `List loop playback`
  String get play_list_loop {
    return Intl.message(
      'List loop playback',
      name: 'play_list_loop',
      desc: '',
      args: [],
    );
  }

  /// `Play in order`
  String get play_list_order {
    return Intl.message(
      'Play in order',
      name: 'play_list_order',
      desc: '',
      args: [],
    );
  }

  /// `Shuffle Playback`
  String get play_list_random {
    return Intl.message(
      'Shuffle Playback',
      name: 'play_list_random',
      desc: '',
      args: [],
    );
  }

  /// `Next song`
  String get play_next {
    return Intl.message(
      'Next song',
      name: 'play_next',
      desc: '',
      args: [],
    );
  }

  /// `Previous song`
  String get play_prev {
    return Intl.message(
      'Previous song',
      name: 'play_prev',
      desc: '',
      args: [],
    );
  }

  /// `Disable song switching`
  String get play_single {
    return Intl.message(
      'Disable song switching',
      name: 'play_single',
      desc: '',
      args: [],
    );
  }

  /// `Single loop playback`
  String get play_single_loop {
    return Intl.message(
      'Single loop playback',
      name: 'play_single_loop',
      desc: '',
      args: [],
    );
  }

  /// `buffering...`
  String get player__buffering {
    return Intl.message(
      'buffering...',
      name: 'player__buffering',
      desc: '',
      args: [],
    );
  }

  /// `finished playing`
  String get player__end {
    return Intl.message(
      'finished playing',
      name: 'player__end',
      desc: '',
      args: [],
    );
  }

  /// `Audio loading error, switch to next track after 5 seconds`
  String get player__error {
    return Intl.message(
      'Audio loading error, switch to next track after 5 seconds',
      name: 'player__error',
      desc: '',
      args: [],
    );
  }

  /// `Acquiring the song link...`
  String get player__geting_url {
    return Intl.message(
      'Acquiring the song link...',
      name: 'player__geting_url',
      desc: '',
      args: [],
    );
  }

  /// `The server is busy, try again in {time} seconds...`
  String player__geting_url_delay_retry(Object time) {
    return Intl.message(
      'The server is busy, try again in $time seconds...',
      name: 'player__geting_url_delay_retry',
      desc: '',
      args: [time],
    );
  }

  /// `Music loading...`
  String get player__loading {
    return Intl.message(
      'Music loading...',
      name: 'player__loading',
      desc: '',
      args: [],
    );
  }

  /// `The URL has expired, refreshing the URL...`
  String get player__refresh_url {
    return Intl.message(
      'The URL has expired, refreshing the URL...',
      name: 'player__refresh_url',
      desc: '',
      args: [],
    );
  }

  /// `HQ`
  String get quality_high_quality {
    return Intl.message(
      'HQ',
      name: 'quality_high_quality',
      desc: '',
      args: [],
    );
  }

  /// `SQ`
  String get quality_lossless {
    return Intl.message(
      'SQ',
      name: 'quality_lossless',
      desc: '',
      args: [],
    );
  }

  /// `Hires`
  String get quality_lossless_24bit {
    return Intl.message(
      'Hires',
      name: 'quality_lossless_24bit',
      desc: '',
      args: [],
    );
  }

  /// `Search what I want~~😉`
  String get search__welcome {
    return Intl.message(
      'Search what I want~~😉',
      name: 'search__welcome',
      desc: '',
      args: [],
    );
  }

  /// `History search`
  String get search_history_search {
    return Intl.message(
      'History search',
      name: 'search_history_search',
      desc: '',
      args: [],
    );
  }

  /// `popular searches`
  String get search_hot_search {
    return Intl.message(
      'popular searches',
      name: 'search_hot_search',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get search_type_music {
    return Intl.message(
      'Music',
      name: 'search_type_music',
      desc: '',
      args: [],
    );
  }

  /// `Song list`
  String get search_type_songlist {
    return Intl.message(
      'Song list',
      name: 'search_type_songlist',
      desc: '',
      args: [],
    );
  }

  /// `Dislike song rule`
  String get setting__other_dislike_list {
    return Intl.message(
      'Dislike song rule',
      name: 'setting__other_dislike_list',
      desc: '',
      args: [],
    );
  }

  /// `Number of rules: {num}`
  String setting__other_dislike_list_label(Object num) {
    return Intl.message(
      'Number of rules: $num',
      name: 'setting__other_dislike_list_label',
      desc: '',
      args: [num],
    );
  }

  /// `Saved`
  String get setting__other_dislike_list_saved_tip {
    return Intl.message(
      'Saved',
      name: 'setting__other_dislike_list_saved_tip',
      desc: '',
      args: [],
    );
  }

  /// `Clear lyrics cache`
  String get setting__other_lyric_raw_clear_btn {
    return Intl.message(
      'Clear lyrics cache',
      name: 'setting__other_lyric_raw_clear_btn',
      desc: '',
      args: [],
    );
  }

  /// `Number of lyrics:`
  String get setting__other_lyric_raw_label {
    return Intl.message(
      'Number of lyrics:',
      name: 'setting__other_lyric_raw_label',
      desc: '',
      args: [],
    );
  }

  /// `Other cache management`
  String get setting__other_meta_cache {
    return Intl.message(
      'Other cache management',
      name: 'setting__other_meta_cache',
      desc: '',
      args: [],
    );
  }

  /// `Clear song URL cache`
  String get setting__other_music_url_clear_btn {
    return Intl.message(
      'Clear song URL cache',
      name: 'setting__other_music_url_clear_btn',
      desc: '',
      args: [],
    );
  }

  /// `Number of song URLs:`
  String get setting__other_music_url_label {
    return Intl.message(
      'Number of song URLs:',
      name: 'setting__other_music_url_label',
      desc: '',
      args: [],
    );
  }

  /// `Clear the source song cache`
  String get setting__other_other_source_clear_btn {
    return Intl.message(
      'Clear the source song cache',
      name: 'setting__other_other_source_clear_btn',
      desc: '',
      args: [],
    );
  }

  /// `Change source song information quantity:`
  String get setting__other_other_source_label {
    return Intl.message(
      'Change source song information quantity:',
      name: 'setting__other_other_source_label',
      desc: '',
      args: [],
    );
  }

  /// `Resource Cache Management`
  String get setting__other_resource_cache {
    return Intl.message(
      'Resource Cache Management',
      name: 'setting__other_resource_cache',
      desc: '',
      args: [],
    );
  }

  /// `About LX Music`
  String get setting_about {
    return Intl.message(
      'About LX Music',
      name: 'setting_about',
      desc: '',
      args: [],
    );
  }

  /// `Backup and Recovery`
  String get setting_backup {
    return Intl.message(
      'Backup and Recovery',
      name: 'setting_backup',
      desc: '',
      args: [],
    );
  }

  /// `All data (list data and setting data)`
  String get setting_backup_all {
    return Intl.message(
      'All data (list data and setting data)',
      name: 'setting_backup_all',
      desc: '',
      args: [],
    );
  }

  /// `Export`
  String get setting_backup_all_export {
    return Intl.message(
      'Export',
      name: 'setting_backup_all_export',
      desc: '',
      args: [],
    );
  }

  /// `Select the backup to...`
  String get setting_backup_all_export_desc {
    return Intl.message(
      'Select the backup to...',
      name: 'setting_backup_all_export_desc',
      desc: '',
      args: [],
    );
  }

  /// `Import`
  String get setting_backup_all_import {
    return Intl.message(
      'Import',
      name: 'setting_backup_all_import',
      desc: '',
      args: [],
    );
  }

  /// `Select a backup file`
  String get setting_backup_all_import_desc {
    return Intl.message(
      'Select a backup file',
      name: 'setting_backup_all_import_desc',
      desc: '',
      args: [],
    );
  }

  /// `List data (common with PC-side list backup files)`
  String get setting_backup_part {
    return Intl.message(
      'List data (common with PC-side list backup files)',
      name: 'setting_backup_part',
      desc: '',
      args: [],
    );
  }

  /// `Export list`
  String get setting_backup_part_export_list {
    return Intl.message(
      'Export list',
      name: 'setting_backup_part_export_list',
      desc: '',
      args: [],
    );
  }

  /// `Select the save location of the playlist backup file`
  String get setting_backup_part_export_list_desc {
    return Intl.message(
      'Select the save location of the playlist backup file',
      name: 'setting_backup_part_export_list_desc',
      desc: '',
      args: [],
    );
  }

  /// `Playlist export failed`
  String get setting_backup_part_export_list_tip_failed {
    return Intl.message(
      'Playlist export failed',
      name: 'setting_backup_part_export_list_tip_failed',
      desc: '',
      args: [],
    );
  }

  /// `Export successful`
  String get setting_backup_part_export_list_tip_success {
    return Intl.message(
      'Export successful',
      name: 'setting_backup_part_export_list_tip_success',
      desc: '',
      args: [],
    );
  }

  /// `📦The file is being packaged...\nIf the file is too large, it may take some time⏳`
  String get setting_backup_part_export_list_tip_zip {
    return Intl.message(
      '📦The file is being packaged...\nIf the file is too large, it may take some time⏳',
      name: 'setting_backup_part_export_list_tip_zip',
      desc: '',
      args: [],
    );
  }

  /// `Export settings`
  String get setting_backup_part_export_setting {
    return Intl.message(
      'Export settings',
      name: 'setting_backup_part_export_setting',
      desc: '',
      args: [],
    );
  }

  /// `Save the list to...`
  String get setting_backup_part_export_setting_desc {
    return Intl.message(
      'Save the list to...',
      name: 'setting_backup_part_export_setting_desc',
      desc: '',
      args: [],
    );
  }

  /// `Import List`
  String get setting_backup_part_import_list {
    return Intl.message(
      'Import List',
      name: 'setting_backup_part_import_list',
      desc: '',
      args: [],
    );
  }

  /// `Select the list of backup files`
  String get setting_backup_part_import_list_desc {
    return Intl.message(
      'Select the list of backup files',
      name: 'setting_backup_part_import_list_desc',
      desc: '',
      args: [],
    );
  }

  /// `List import failed 😕`
  String get setting_backup_part_import_list_tip_error {
    return Intl.message(
      'List import failed 😕',
      name: 'setting_backup_part_import_list_tip_error',
      desc: '',
      args: [],
    );
  }

  /// `🚀I am trying to import...\nIf the list is too big, it may take some time⏳`
  String get setting_backup_part_import_list_tip_runing {
    return Intl.message(
      '🚀I am trying to import...\nIf the list is too big, it may take some time⏳',
      name: 'setting_backup_part_import_list_tip_runing',
      desc: '',
      args: [],
    );
  }

  /// `Import successful 🎉`
  String get setting_backup_part_import_list_tip_success {
    return Intl.message(
      'Import successful 🎉',
      name: 'setting_backup_part_import_list_tip_success',
      desc: '',
      args: [],
    );
  }

  /// `📦File parsing...\nIf the file is too large, it may take some time⏳`
  String get setting_backup_part_import_list_tip_unzip {
    return Intl.message(
      '📦File parsing...\nIf the file is too large, it may take some time⏳',
      name: 'setting_backup_part_import_list_tip_unzip',
      desc: '',
      args: [],
    );
  }

  /// `Import settings`
  String get setting_backup_part_import_setting {
    return Intl.message(
      'Import settings',
      name: 'setting_backup_part_import_setting',
      desc: '',
      args: [],
    );
  }

  /// `Select the Settings file`
  String get setting_backup_part_import_setting_desc {
    return Intl.message(
      'Select the Settings file',
      name: 'setting_backup_part_import_setting_desc',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get setting_basic {
    return Intl.message(
      'General',
      name: 'setting_basic',
      desc: '',
      args: [],
    );
  }

  /// `Always preserve status bar height`
  String get setting_basic_always_keep_statusbar_height {
    return Intl.message(
      'Always preserve status bar height',
      name: 'setting_basic_always_keep_statusbar_height',
      desc: '',
      args: [],
    );
  }

  /// `Theme Mode`
  String get setting_basic_theme_mode {
    return Intl.message(
      'Theme Mode',
      name: 'setting_basic_theme_mode',
      desc: '',
      args: [],
    );
  }

  /// `Follow System`
  String get setting_basic_theme_follow_system {
    return Intl.message(
      'Follow System',
      name: 'setting_basic_theme_follow_system',
      desc: '',
      args: [],
    );
  }

  /// `Light Mode`
  String get setting_basic_theme_light {
    return Intl.message(
      'Light Mode',
      name: 'setting_basic_theme_light',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get setting_basic_theme_dark {
    return Intl.message(
      'Dark Mode',
      name: 'setting_basic_theme_dark',
      desc: '',
      args: [],
    );
  }

  /// `By default, the program will dynamically determine whether space needs to be reserved for the system status bar, but if there is a situation where software interactive content overlaps with the status bar content on your device, you can enable this setting to always reserve space for the system status bar. \n.`
  String get setting_basic_always_keep_statusbar_height_tip {
    return Intl.message(
      'By default, the program will dynamically determine whether space needs to be reserved for the system status bar, but if there is a situation where software interactive content overlaps with the status bar content on your device, you can enable this setting to always reserve space for the system status bar. \n.',
      name: 'setting_basic_always_keep_statusbar_height_tip',
      desc: '',
      args: [],
    );
  }

  /// `Random pop-up animation`
  String get setting_basic_animation {
    return Intl.message(
      'Random pop-up animation',
      name: 'setting_basic_animation',
      desc: '',
      args: [],
    );
  }

  /// `Auto hide playbar when keyboard pops up`
  String get setting_basic_auto_hide_play_bar {
    return Intl.message(
      'Auto hide playbar when keyboard pops up',
      name: 'setting_basic_auto_hide_play_bar',
      desc: '',
      args: [],
    );
  }

  /// `Navigation, favorite list pop-up direction`
  String get setting_basic_drawer_layout_position {
    return Intl.message(
      'Navigation, favorite list pop-up direction',
      name: 'setting_basic_drawer_layout_position',
      desc: '',
      args: [],
    );
  }

  /// `Left side`
  String get setting_basic_drawer_layout_position_left {
    return Intl.message(
      'Left side',
      name: 'setting_basic_drawer_layout_position_left',
      desc: '',
      args: [],
    );
  }

  /// `Right side`
  String get setting_basic_drawer_layout_position_right {
    return Intl.message(
      'Right side',
      name: 'setting_basic_drawer_layout_position_right',
      desc: '',
      args: [],
    );
  }

  /// `Font size setting [effective after restart]`
  String get setting_basic_font_size {
    return Intl.message(
      'Font size setting [effective after restart]',
      name: 'setting_basic_font_size',
      desc: '',
      args: [],
    );
  }

  /// `standard`
  String get setting_basic_font_size_100 {
    return Intl.message(
      'standard',
      name: 'setting_basic_font_size_100',
      desc: '',
      args: [],
    );
  }

  /// `Big`
  String get setting_basic_font_size_110 {
    return Intl.message(
      'Big',
      name: 'setting_basic_font_size_110',
      desc: '',
      args: [],
    );
  }

  /// `bigger`
  String get setting_basic_font_size_120 {
    return Intl.message(
      'bigger',
      name: 'setting_basic_font_size_120',
      desc: '',
      args: [],
    );
  }

  /// `Very big`
  String get setting_basic_font_size_130 {
    return Intl.message(
      'Very big',
      name: 'setting_basic_font_size_130',
      desc: '',
      args: [],
    );
  }

  /// `smaller`
  String get setting_basic_font_size_80 {
    return Intl.message(
      'smaller',
      name: 'setting_basic_font_size_80',
      desc: '',
      args: [],
    );
  }

  /// `Small`
  String get setting_basic_font_size_90 {
    return Intl.message(
      'Small',
      name: 'setting_basic_font_size_90',
      desc: '',
      args: [],
    );
  }

  /// `LX Music Font Size Preview`
  String get setting_basic_font_size_preview {
    return Intl.message(
      'LX Music Font Size Preview',
      name: 'setting_basic_font_size_preview',
      desc: '',
      args: [],
    );
  }

  /// `Enable horizontal scrolling on the vertical home page`
  String get setting_basic_home_page_scroll {
    return Intl.message(
      'Enable horizontal scrolling on the vertical home page',
      name: 'setting_basic_home_page_scroll',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get setting_basic_lang {
    return Intl.message(
      'Language',
      name: 'setting_basic_lang',
      desc: '',
      args: [],
    );
  }

  /// `flow system`
  String get setting_basic_lang_system {
    return Intl.message(
      'flow system',
      name: 'setting_basic_lang_system',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get setting_basic_share_type {
    return Intl.message(
      'Share',
      name: 'setting_basic_share_type',
      desc: '',
      args: [],
    );
  }

  /// `copy to clipboard`
  String get setting_basic_share_type_clipboard {
    return Intl.message(
      'copy to clipboard',
      name: 'setting_basic_share_type_clipboard',
      desc: '',
      args: [],
    );
  }

  /// `Share using the system`
  String get setting_basic_share_type_system {
    return Intl.message(
      'Share using the system',
      name: 'setting_basic_share_type_system',
      desc: '',
      args: [],
    );
  }

  /// `Show switching animation`
  String get setting_basic_show_animation {
    return Intl.message(
      'Show switching animation',
      name: 'setting_basic_show_animation',
      desc: '',
      args: [],
    );
  }

  /// `Show back to desktop button`
  String get setting_basic_show_back_btn {
    return Intl.message(
      'Show back to desktop button',
      name: 'setting_basic_show_back_btn',
      desc: '',
      args: [],
    );
  }

  /// `Show exit app button`
  String get setting_basic_show_exit_btn {
    return Intl.message(
      'Show exit app button',
      name: 'setting_basic_show_exit_btn',
      desc: '',
      args: [],
    );
  }

  /// `Music source`
  String get setting_basic_source {
    return Intl.message(
      'Music source',
      name: 'setting_basic_source',
      desc: '',
      args: [],
    );
  }

  /// `Direct API`
  String get setting_basic_source_direct {
    return Intl.message(
      'Direct API',
      name: 'setting_basic_source_direct',
      desc: '',
      args: [],
    );
  }

  /// `initialization failed`
  String get setting_basic_source_status_failed {
    return Intl.message(
      'initialization failed',
      name: 'setting_basic_source_status_failed',
      desc: '',
      args: [],
    );
  }

  /// `Initializing`
  String get setting_basic_source_status_initing {
    return Intl.message(
      'Initializing',
      name: 'setting_basic_source_status_initing',
      desc: '',
      args: [],
    );
  }

  /// `Initialization successful`
  String get setting_basic_source_status_success {
    return Intl.message(
      'Initialization successful',
      name: 'setting_basic_source_status_success',
      desc: '',
      args: [],
    );
  }

  /// `Temporary API (some features not available; workaround if Test API unavailable)`
  String get setting_basic_source_temp {
    return Intl.message(
      'Temporary API (some features not available; workaround if Test API unavailable)',
      name: 'setting_basic_source_temp',
      desc: '',
      args: [],
    );
  }

  /// `Test API (Available for most software features)`
  String get setting_basic_source_test {
    return Intl.message(
      'Test API (Available for most software features)',
      name: 'setting_basic_source_test',
      desc: '',
      args: [],
    );
  }

  /// `Choose a music source`
  String get setting_basic_source_title {
    return Intl.message(
      'Choose a music source',
      name: 'setting_basic_source_title',
      desc: '',
      args: [],
    );
  }

  /// `Custom source management`
  String get setting_basic_source_user_api_btn {
    return Intl.message(
      'Custom source management',
      name: 'setting_basic_source_user_api_btn',
      desc: '',
      args: [],
    );
  }

  /// `Source name`
  String get setting_basic_sourcename {
    return Intl.message(
      'Source name',
      name: 'setting_basic_sourcename',
      desc: '',
      args: [],
    );
  }

  /// `Aliases`
  String get setting_basic_sourcename_alias {
    return Intl.message(
      'Aliases',
      name: 'setting_basic_sourcename_alias',
      desc: '',
      args: [],
    );
  }

  /// `Original`
  String get setting_basic_sourcename_real {
    return Intl.message(
      'Original',
      name: 'setting_basic_sourcename_real',
      desc: '',
      args: [],
    );
  }

  /// `Select the name of music source`
  String get setting_basic_sourcename_title {
    return Intl.message(
      'Select the name of music source',
      name: 'setting_basic_sourcename_title',
      desc: '',
      args: [],
    );
  }

  /// `Play music automatically after startup`
  String get setting_basic_startup_auto_play {
    return Intl.message(
      'Play music automatically after startup',
      name: 'setting_basic_startup_auto_play',
      desc: '',
      args: [],
    );
  }

  /// `Open the playback details interface after startup`
  String get setting_basic_startup_push_play_detail_screen {
    return Intl.message(
      'Open the playback details interface after startup',
      name: 'setting_basic_startup_push_play_detail_screen',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get setting_basic_theme {
    return Intl.message(
      'Theme',
      name: 'setting_basic_theme',
      desc: '',
      args: [],
    );
  }

  /// `Follow the system light and dark mode to switch themes`
  String get setting_basic_theme_auto_theme {
    return Intl.message(
      'Follow the system light and dark mode to switch themes',
      name: 'setting_basic_theme_auto_theme',
      desc: '',
      args: [],
    );
  }

  /// `Use dynamic backgrounds`
  String get setting_basic_theme_dynamic_bg {
    return Intl.message(
      'Use dynamic backgrounds',
      name: 'setting_basic_theme_dynamic_bg',
      desc: '',
      args: [],
    );
  }

  /// `Enable font shadow`
  String get setting_basic_theme_font_shadow {
    return Intl.message(
      'Enable font shadow',
      name: 'setting_basic_theme_font_shadow',
      desc: '',
      args: [],
    );
  }

  /// `Hide black theme`
  String get setting_basic_theme_hide_bg_dark {
    return Intl.message(
      'Hide black theme',
      name: 'setting_basic_theme_hide_bg_dark',
      desc: '',
      args: [],
    );
  }

  /// `Expand themes`
  String get setting_basic_theme_more_btn_show {
    return Intl.message(
      'Expand themes',
      name: 'setting_basic_theme_more_btn_show',
      desc: '',
      args: [],
    );
  }

  /// `Use the system file selector`
  String get setting_basic_use_system_file_selector {
    return Intl.message(
      'Use the system file selector',
      name: 'setting_basic_use_system_file_selector',
      desc: '',
      args: [],
    );
  }

  /// `After enabling this option, operations such as importing backup files, custom sources, etc. will not require application for storage permissions, but it may not be available on some systems.\nIf you cannot import files after enabling this setting, you can turn off this setting and fall back to the software's built-in file selector.`
  String get setting_basic_use_system_file_selector_tip {
    return Intl.message(
      'After enabling this option, operations such as importing backup files, custom sources, etc. will not require application for storage permissions, but it may not be available on some systems.\nIf you cannot import files after enabling this setting, you can turn off this setting and fall back to the software\'s built-in file selector.',
      name: 'setting_basic_use_system_file_selector_tip',
      desc: '',
      args: [],
    );
  }

  /// `song name@artist name\nSong name\n@ singer name`
  String get setting_dislike_list_input_tip {
    return Intl.message(
      'song name@artist name\nSong name\n@ singer name',
      name: 'setting_dislike_list_input_tip',
      desc: '',
      args: [],
    );
  }

  /// `1. If there is a "@" symbol in the song or singer's name, you need to replace it with "#"\n2. Specify a song of a singer: Name@Singer\n3. Specify a song: Name\n4. Specify a certain singer: @Singer`
  String get setting_dislike_list_tips {
    return Intl.message(
      '1. If there is a "@" symbol in the song or singer\'s name, you need to replace it with "#"\n2. Specify a song of a singer: Name@Singer\n3. Specify a song: Name\n4. Specify a certain singer: @Singer',
      name: 'setting_dislike_list_tips',
      desc: '',
      args: [],
    );
  }

  /// `List settings`
  String get setting_list {
    return Intl.message(
      'List settings',
      name: 'setting_list',
      desc: '',
      args: [],
    );
  }

  /// `Position when the song was added to the list`
  String get setting_list_add_music_location_type {
    return Intl.message(
      'Position when the song was added to the list',
      name: 'setting_list_add_music_location_type',
      desc: '',
      args: [],
    );
  }

  /// `Bottom`
  String get setting_list_add_music_location_type_bottom {
    return Intl.message(
      'Bottom',
      name: 'setting_list_add_music_location_type_bottom',
      desc: '',
      args: [],
    );
  }

  /// `Top`
  String get setting_list_add_music_location_type_top {
    return Intl.message(
      'Top',
      name: 'setting_list_add_music_location_type_top',
      desc: '',
      args: [],
    );
  }

  /// `When you click a song in the list, it will automatically switch to the current list for playback (only valid for playlists and leaderboards)`
  String get setting_list_click_action {
    return Intl.message(
      'When you click a song in the list, it will automatically switch to the current list for playback (only valid for playlists and leaderboards)',
      name: 'setting_list_click_action',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'setting_list_show interval' key

  /// `Show song album name`
  String get setting_list_show_album_name {
    return Intl.message(
      'Show song album name',
      name: 'setting_list_show_album_name',
      desc: '',
      args: [],
    );
  }

  /// `The desktop lyrics function needs to be granted the permission of LX Music to display the floating window in the system permission setting before it can be used. Do you go to the relevant interface to grant this permission?`
  String get setting_lyric_dektop_permission_tip {
    return Intl.message(
      'The desktop lyrics function needs to be granted the permission of LX Music to display the floating window in the system permission setting before it can be used. Do you go to the relevant interface to grant this permission?',
      name: 'setting_lyric_dektop_permission_tip',
      desc: '',
      args: [],
    );
  }

  /// `Desktop lyrics`
  String get setting_lyric_desktop {
    return Intl.message(
      'Desktop lyrics',
      name: 'setting_lyric_desktop',
      desc: '',
      args: [],
    );
  }

  /// `Show desktop lyrics`
  String get setting_lyric_desktop_enable {
    return Intl.message(
      'Show desktop lyrics',
      name: 'setting_lyric_desktop_enable',
      desc: '',
      args: [],
    );
  }

  /// `Lock lyrics`
  String get setting_lyric_desktop_lock {
    return Intl.message(
      'Lock lyrics',
      name: 'setting_lyric_desktop_lock',
      desc: '',
      args: [],
    );
  }

  /// `maximum number of lines`
  String get setting_lyric_desktop_maxlineNum {
    return Intl.message(
      'maximum number of lines',
      name: 'setting_lyric_desktop_maxlineNum',
      desc: '',
      args: [],
    );
  }

  /// `Use single line lyrics`
  String get setting_lyric_desktop_single_line {
    return Intl.message(
      'Use single line lyrics',
      name: 'setting_lyric_desktop_single_line',
      desc: '',
      args: [],
    );
  }

  /// `Lyric font transparency`
  String get setting_lyric_desktop_text_opacity {
    return Intl.message(
      'Lyric font transparency',
      name: 'setting_lyric_desktop_text_opacity',
      desc: '',
      args: [],
    );
  }

  /// `Lyric font size`
  String get setting_lyric_desktop_text_size {
    return Intl.message(
      'Lyric font size',
      name: 'setting_lyric_desktop_text_size',
      desc: '',
      args: [],
    );
  }

  /// `Lyrics Horizontal Alignment`
  String get setting_lyric_desktop_text_x {
    return Intl.message(
      'Lyrics Horizontal Alignment',
      name: 'setting_lyric_desktop_text_x',
      desc: '',
      args: [],
    );
  }

  /// `Center`
  String get setting_lyric_desktop_text_x_center {
    return Intl.message(
      'Center',
      name: 'setting_lyric_desktop_text_x_center',
      desc: '',
      args: [],
    );
  }

  /// `Left`
  String get setting_lyric_desktop_text_x_left {
    return Intl.message(
      'Left',
      name: 'setting_lyric_desktop_text_x_left',
      desc: '',
      args: [],
    );
  }

  /// `Right`
  String get setting_lyric_desktop_text_x_right {
    return Intl.message(
      'Right',
      name: 'setting_lyric_desktop_text_x_right',
      desc: '',
      args: [],
    );
  }

  /// `Lyrics vertical alignment`
  String get setting_lyric_desktop_text_y {
    return Intl.message(
      'Lyrics vertical alignment',
      name: 'setting_lyric_desktop_text_y',
      desc: '',
      args: [],
    );
  }

  /// `Bottom`
  String get setting_lyric_desktop_text_y_bottom {
    return Intl.message(
      'Bottom',
      name: 'setting_lyric_desktop_text_y_bottom',
      desc: '',
      args: [],
    );
  }

  /// `Center`
  String get setting_lyric_desktop_text_y_center {
    return Intl.message(
      'Center',
      name: 'setting_lyric_desktop_text_y_center',
      desc: '',
      args: [],
    );
  }

  /// `Top`
  String get setting_lyric_desktop_text_y_top {
    return Intl.message(
      'Top',
      name: 'setting_lyric_desktop_text_y_top',
      desc: '',
      args: [],
    );
  }

  /// `Lyrics theme color`
  String get setting_lyric_desktop_theme {
    return Intl.message(
      'Lyrics theme color',
      name: 'setting_lyric_desktop_theme',
      desc: '',
      args: [],
    );
  }

  /// `Show lyrics switching animation`
  String get setting_lyric_desktop_toggle_anima {
    return Intl.message(
      'Show lyrics switching animation',
      name: 'setting_lyric_desktop_toggle_anima',
      desc: '',
      args: [],
    );
  }

  /// `window percentage width`
  String get setting_lyric_desktop_view_width {
    return Intl.message(
      'window percentage width',
      name: 'setting_lyric_desktop_view_width',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get setting_other {
    return Intl.message(
      'Other',
      name: 'setting_other',
      desc: '',
      args: [],
    );
  }

  /// `Cache management (including the cache of songs, lyrics, error logs, etc., it is not recommended to clean up if there is no problem related to song playback)`
  String get setting_other_cache {
    return Intl.message(
      'Cache management (including the cache of songs, lyrics, error logs, etc., it is not recommended to clean up if there is no problem related to song playback)',
      name: 'setting_other_cache',
      desc: '',
      args: [],
    );
  }

  /// `Clear Cache`
  String get setting_other_cache_clear_btn {
    return Intl.message(
      'Clear Cache',
      name: 'setting_other_cache_clear_btn',
      desc: '',
      args: [],
    );
  }

  /// `Cache clearing completed`
  String get setting_other_cache_clear_success_tip {
    return Intl.message(
      'Cache clearing completed',
      name: 'setting_other_cache_clear_success_tip',
      desc: '',
      args: [],
    );
  }

  /// `Statistics cached...`
  String get setting_other_cache_getting {
    return Intl.message(
      'Statistics cached...',
      name: 'setting_other_cache_getting',
      desc: '',
      args: [],
    );
  }

  /// `Currently used cache size: `
  String get setting_other_cache_size {
    return Intl.message(
      'Currently used cache size: ',
      name: 'setting_other_cache_size',
      desc: '',
      args: [],
    );
  }

  /// `Edit dislike song rules`
  String get setting_other_dislike_list_show_btn {
    return Intl.message(
      'Edit dislike song rules',
      name: 'setting_other_dislike_list_show_btn',
      desc: '',
      args: [],
    );
  }

  /// `Error log (log when abnormal operation occurs)`
  String get setting_other_log {
    return Intl.message(
      'Error log (log when abnormal operation occurs)',
      name: 'setting_other_log',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get setting_other_log_btn_clean {
    return Intl.message(
      'Clear',
      name: 'setting_other_log_btn_clean',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get setting_other_log_btn_hide {
    return Intl.message(
      'Close',
      name: 'setting_other_log_btn_hide',
      desc: '',
      args: [],
    );
  }

  /// `View log`
  String get setting_other_log_btn_show {
    return Intl.message(
      'View log',
      name: 'setting_other_log_btn_show',
      desc: '',
      args: [],
    );
  }

  /// `Record synchronization log`
  String get setting_other_log_sync_log {
    return Intl.message(
      'Record synchronization log',
      name: 'setting_other_log_sync_log',
      desc: '',
      args: [],
    );
  }

  /// `Log cleaning completed`
  String get setting_other_log_tip_clean_success {
    return Intl.message(
      'Log cleaning completed',
      name: 'setting_other_log_tip_clean_success',
      desc: '',
      args: [],
    );
  }

  /// `The log is empty~`
  String get setting_other_log_tip_null {
    return Intl.message(
      'The log is empty~',
      name: 'setting_other_log_tip_null',
      desc: '',
      args: [],
    );
  }

  /// `Logging custom source logs`
  String get setting_other_log_user_api_log {
    return Intl.message(
      'Logging custom source logs',
      name: 'setting_other_log_user_api_log',
      desc: '',
      args: [],
    );
  }

  /// `Enable audio offload`
  String get setting_play_audio_offload {
    return Intl.message(
      'Enable audio offload',
      name: 'setting_play_audio_offload',
      desc: '',
      args: [],
    );
  }

  /// `Enabling audio offloading can save power consumption, but on some devices, all songs may prompt "Audio loading error" or "The whole song cannot be played completely". This is caused by a bug in the current system.\nFor People who encounter this problem can turn off this option and restart the application completely to try again.`
  String get setting_play_audio_offload_tip {
    return Intl.message(
      'Enabling audio offloading can save power consumption, but on some devices, all songs may prompt "Audio loading error" or "The whole song cannot be played completely". This is caused by a bug in the current system.\nFor People who encounter this problem can turn off this option and restart the application completely to try again.',
      name: 'setting_play_audio_offload_tip',
      desc: '',
      args: [],
    );
  }

  /// `Automatically clear the played list`
  String get setting_play_auto_clean_played_list {
    return Intl.message(
      'Automatically clear the played list',
      name: 'setting_play_auto_clean_played_list',
      desc: '',
      args: [],
    );
  }

  /// `In random play mode, when switching songs by clicking the same list as the playlist, if automatic clearing of the already played list is enabled, the played songs will re-participate in random play.`
  String get setting_play_auto_clean_played_list_tip {
    return Intl.message(
      'In random play mode, when switching songs by clicking the same list as the playlist, if automatic clearing of the already played list is enabled, the played songs will re-participate in random play.',
      name: 'setting_play_auto_clean_played_list_tip',
      desc: '',
      args: [],
    );
  }

  /// `Maximum cache size (MB)`
  String get setting_play_cache_size {
    return Intl.message(
      'Maximum cache size (MB)',
      name: 'setting_play_cache_size',
      desc: '',
      args: [],
    );
  }

  /// `Disabled cache`
  String get setting_play_cache_size_no_cache {
    return Intl.message(
      'Disabled cache',
      name: 'setting_play_cache_size_no_cache',
      desc: '',
      args: [],
    );
  }

  /// `The cache setting is completed, it will take effect after restarting the application`
  String get setting_play_cache_size_save_tip {
    return Intl.message(
      'The cache setting is completed, it will take effect after restarting the application',
      name: 'setting_play_cache_size_save_tip',
      desc: '',
      args: [],
    );
  }

  /// `When other apps play sound, automatically pause the playback`
  String get setting_play_handle_audio_focus {
    return Intl.message(
      'When other apps play sound, automatically pause the playback',
      name: 'setting_play_handle_audio_focus',
      desc: '',
      args: [],
    );
  }

  /// `Take effect after restarting the application`
  String get setting_play_handle_audio_focus_tip {
    return Intl.message(
      'Take effect after restarting the application',
      name: 'setting_play_handle_audio_focus_tip',
      desc: '',
      args: [],
    );
  }

  /// `Show lyrics translation`
  String get setting_play_lyric_transition {
    return Intl.message(
      'Show lyrics translation',
      name: 'setting_play_lyric_transition',
      desc: '',
      args: [],
    );
  }

  /// `Prioritize playback sound quality (if supported)`
  String get setting_play_play_quality {
    return Intl.message(
      'Prioritize playback sound quality (if supported)',
      name: 'setting_play_play_quality',
      desc: '',
      args: [],
    );
  }

  /// `Convert the played lyrics to Traditional Chinese`
  String get setting_play_s2t {
    return Intl.message(
      'Convert the played lyrics to Traditional Chinese',
      name: 'setting_play_s2t',
      desc: '',
      args: [],
    );
  }

  /// `Remember playback progress`
  String get setting_play_save_play_time {
    return Intl.message(
      'Remember playback progress',
      name: 'setting_play_save_play_time',
      desc: '',
      args: [],
    );
  }

  /// `Show song picture in notification bar`
  String get setting_play_show_notification_image {
    return Intl.message(
      'Show song picture in notification bar',
      name: 'setting_play_show_notification_image',
      desc: '',
      args: [],
    );
  }

  /// `Show lyrics roman (if available)`
  String get setting_play_show_roma {
    return Intl.message(
      'Show lyrics roman (if available)',
      name: 'setting_play_show_roma',
      desc: '',
      args: [],
    );
  }

  /// `Show lyrics translation (if available)`
  String get setting_play_show_translation {
    return Intl.message(
      'Show lyrics translation (if available)',
      name: 'setting_play_show_translation',
      desc: '',
      args: [],
    );
  }

  /// `Play`
  String get setting_player {
    return Intl.message(
      'Play',
      name: 'setting_player',
      desc: '',
      args: [],
    );
  }

  /// `Remember playback progress`
  String get setting_player_save_play_time {
    return Intl.message(
      'Remember playback progress',
      name: 'setting_player_save_play_time',
      desc: '',
      args: [],
    );
  }

  /// `Search settings`
  String get setting_search {
    return Intl.message(
      'Search settings',
      name: 'setting_search',
      desc: '',
      args: [],
    );
  }

  /// `show search history`
  String get setting_search_show_history_search {
    return Intl.message(
      'show search history',
      name: 'setting_search_show_history_search',
      desc: '',
      args: [],
    );
  }

  /// `show popular searches`
  String get setting_search_show_hot_search {
    return Intl.message(
      'show popular searches',
      name: 'setting_search_show_hot_search',
      desc: '',
      args: [],
    );
  }

  /// `Synchronize`
  String get setting_sync {
    return Intl.message(
      'Synchronize',
      name: 'setting_sync',
      desc: '',
      args: [],
    );
  }

  /// `Local IP address: {address}`
  String setting_sync_address(Object address) {
    return Intl.message(
      'Local IP address: $address',
      name: 'setting_sync_address',
      desc: '',
      args: [address],
    );
  }

  /// `The IP of the current device has been blocked by the server!`
  String get setting_sync_code_blocked_ip {
    return Intl.message(
      'The IP of the current device has been blocked by the server!',
      name: 'setting_sync_code_blocked_ip',
      desc: '',
      args: [],
    );
  }

  /// `Invalid connection code`
  String get setting_sync_code_fail {
    return Intl.message(
      'Invalid connection code',
      name: 'setting_sync_code_fail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the connection code`
  String get setting_sync_code_input_tip {
    return Intl.message(
      'Please enter the connection code',
      name: 'setting_sync_code_input_tip',
      desc: '',
      args: [],
    );
  }

  /// `You need to enter the connection code for the first connection`
  String get setting_sync_code_label {
    return Intl.message(
      'You need to enter the connection code for the first connection',
      name: 'setting_sync_code_label',
      desc: '',
      args: [],
    );
  }

  /// `Enable sync`
  String get setting_sync_enbale {
    return Intl.message(
      'Enable sync',
      name: 'setting_sync_enbale',
      desc: '',
      args: [],
    );
  }

  /// `History address`
  String get setting_sync_history {
    return Intl.message(
      'History address',
      name: 'setting_sync_history',
      desc: '',
      args: [],
    );
  }

  /// `Nothing here`
  String get setting_sync_history_empty {
    return Intl.message(
      'Nothing here',
      name: 'setting_sync_history_empty',
      desc: '',
      args: [],
    );
  }

  /// `Connection history`
  String get setting_sync_history_title {
    return Intl.message(
      'Connection history',
      name: 'setting_sync_history_title',
      desc: '',
      args: [],
    );
  }

  /// `Synchronization service address`
  String get setting_sync_host_label {
    return Intl.message(
      'Synchronization service address',
      name: 'setting_sync_host_label',
      desc: '',
      args: [],
    );
  }

  /// `The address needs to start with http:// or https://!`
  String get setting_sync_host_value_error_tip {
    return Intl.message(
      'The address needs to start with http:// or https://!',
      name: 'setting_sync_host_value_error_tip',
      desc: '',
      args: [],
    );
  }

  /// `http://IP:Port`
  String get setting_sync_host_value_tip {
    return Intl.message(
      'http://IP:Port',
      name: 'setting_sync_host_value_tip',
      desc: '',
      args: [],
    );
  }

  /// `Synchronization service port number`
  String get setting_sync_port_label {
    return Intl.message(
      'Synchronization service port number',
      name: 'setting_sync_port_label',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the synchronization service port number`
  String get setting_sync_port_tip {
    return Intl.message(
      'Please enter the synchronization service port number',
      name: 'setting_sync_port_tip',
      desc: '',
      args: [],
    );
  }

  /// `Status: {status}`
  String setting_sync_status(Object status) {
    return Intl.message(
      'Status: $status',
      name: 'setting_sync_status',
      desc: '',
      args: [status],
    );
  }

  /// `Connected`
  String get setting_sync_status_enabled {
    return Intl.message(
      'Connected',
      name: 'setting_sync_status_enabled',
      desc: '',
      args: [],
    );
  }

  /// `theme settings`
  String get setting_theme {
    return Intl.message(
      'theme settings',
      name: 'setting_theme',
      desc: '',
      args: [],
    );
  }

  /// `Software Update`
  String get setting_version {
    return Intl.message(
      'Software Update',
      name: 'setting_version',
      desc: '',
      args: [],
    );
  }

  /// `Open the update window 🚀`
  String get setting_version_show_ver_modal {
    return Intl.message(
      'Open the update window 🚀',
      name: 'setting_version_show_ver_modal',
      desc: '',
      args: [],
    );
  }

  /// `Share {name} to...`
  String share_card_title_music(Object name) {
    return Intl.message(
      'Share $name to...',
      name: 'share_card_title_music',
      desc: '',
      args: [name],
    );
  }

  /// `Song sharing`
  String get share_title_music {
    return Intl.message(
      'Song sharing',
      name: 'share_title_music',
      desc: '',
      args: [],
    );
  }

  /// `Artist: {name}`
  String singer(Object name) {
    return Intl.message(
      'Artist: $name',
      name: 'singer',
      desc: '',
      args: [name],
    );
  }

  /// `Hot`
  String get songlist_hot {
    return Intl.message(
      'Hot',
      name: 'songlist_hot',
      desc: '',
      args: [],
    );
  }

  /// `Hot Collect`
  String get songlist_hot_collect {
    return Intl.message(
      'Hot Collect',
      name: 'songlist_hot_collect',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get songlist_new {
    return Intl.message(
      'New',
      name: 'songlist_new',
      desc: '',
      args: [],
    );
  }

  /// `Import`
  String get songlist_open {
    return Intl.message(
      'Import',
      name: 'songlist_open',
      desc: '',
      args: [],
    );
  }

  /// `Enter the playlist link or playlist ID`
  String get songlist_open_input_placeholder {
    return Intl.message(
      'Enter the playlist link or playlist ID',
      name: 'songlist_open_input_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `1. Cross-source opening of the playlist is not supported. Please confirm whether the playlist to be opened corresponds to the current playlist source\n2. If you encounter a playlist link that cannot be opened, feedback is welcome\n3, Kugou source Open with playlist ID is not supported, but Kugou code is supported`
  String get songlist_open_input_tip {
    return Intl.message(
      '1. Cross-source opening of the playlist is not supported. Please confirm whether the playlist to be opened corresponds to the current playlist source\n2. If you encounter a playlist link that cannot be opened, feedback is welcome\n3, Kugou source Open with playlist ID is not supported, but Kugou code is supported',
      name: 'songlist_open_input_tip',
      desc: '',
      args: [],
    );
  }

  /// `Recommend`
  String get songlist_recommend {
    return Intl.message(
      'Recommend',
      name: 'songlist_recommend',
      desc: '',
      args: [],
    );
  }

  /// `Rise`
  String get songlist_rise {
    return Intl.message(
      'Rise',
      name: 'songlist_rise',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get songlist_tag_default {
    return Intl.message(
      'Default',
      name: 'songlist_tag_default',
      desc: '',
      args: [],
    );
  }

  /// `Hot`
  String get songlist_tag_hot {
    return Intl.message(
      'Hot',
      name: 'songlist_tag_hot',
      desc: '',
      args: [],
    );
  }

  /// `Playlist category`
  String get songlist_tags {
    return Intl.message(
      'Playlist category',
      name: 'songlist_tags',
      desc: '',
      args: [],
    );
  }

  /// `Aggregated`
  String get source_alias_all {
    return Intl.message(
      'Aggregated',
      name: 'source_alias_all',
      desc: '',
      args: [],
    );
  }

  /// `BD Music`
  String get source_alias_bd {
    return Intl.message(
      'BD Music',
      name: 'source_alias_bd',
      desc: '',
      args: [],
    );
  }

  /// `KG Music`
  String get source_alias_kg {
    return Intl.message(
      'KG Music',
      name: 'source_alias_kg',
      desc: '',
      args: [],
    );
  }

  /// `KW Music`
  String get source_alias_kw {
    return Intl.message(
      'KW Music',
      name: 'source_alias_kw',
      desc: '',
      args: [],
    );
  }

  /// `MG Music`
  String get source_alias_mg {
    return Intl.message(
      'MG Music',
      name: 'source_alias_mg',
      desc: '',
      args: [],
    );
  }

  /// `TX Music`
  String get source_alias_tx {
    return Intl.message(
      'TX Music',
      name: 'source_alias_tx',
      desc: '',
      args: [],
    );
  }

  /// `WY Music`
  String get source_alias_wy {
    return Intl.message(
      'WY Music',
      name: 'source_alias_wy',
      desc: '',
      args: [],
    );
  }

  /// `Aggregated`
  String get source_real_all {
    return Intl.message(
      'Aggregated',
      name: 'source_real_all',
      desc: '',
      args: [],
    );
  }

  /// `Baidu`
  String get source_real_bd {
    return Intl.message(
      'Baidu',
      name: 'source_real_bd',
      desc: '',
      args: [],
    );
  }

  /// `Kugou`
  String get source_real_kg {
    return Intl.message(
      'Kugou',
      name: 'source_real_kg',
      desc: '',
      args: [],
    );
  }

  /// `Kuwo`
  String get source_real_kw {
    return Intl.message(
      'Kuwo',
      name: 'source_real_kw',
      desc: '',
      args: [],
    );
  }

  /// `Migu`
  String get source_real_mg {
    return Intl.message(
      'Migu',
      name: 'source_real_mg',
      desc: '',
      args: [],
    );
  }

  /// `Tencent`
  String get source_real_tx {
    return Intl.message(
      'Tencent',
      name: 'source_real_tx',
      desc: '',
      args: [],
    );
  }

  /// `Netease`
  String get source_real_wy {
    return Intl.message(
      'Netease',
      name: 'source_real_wy',
      desc: '',
      args: [],
    );
  }

  /// `Stop`
  String get stop {
    return Intl.message(
      'Stop',
      name: 'stop',
      desc: '',
      args: [],
    );
  }

  /// `Stopped`
  String get stopped {
    return Intl.message(
      'Stopped',
      name: 'stopped',
      desc: '',
      args: [],
    );
  }

  /// `The selected file does not meet the requirements!`
  String get storage_file_no_match {
    return Intl.message(
      'The selected file does not meet the requirements!',
      name: 'storage_file_no_match',
      desc: '',
      args: [],
    );
  }

  /// `Use the system file selectioner to select the file failure. Do you return to the built -in file selectioner of the software?`
  String get storage_file_no_select_file_failed_tip {
    return Intl.message(
      'Use the system file selectioner to select the file failure. Do you return to the built -in file selectioner of the software?',
      name: 'storage_file_no_select_file_failed_tip',
      desc: '',
      args: [],
    );
  }

  /// `User Disagree`
  String get storage_permission_tip_disagree {
    return Intl.message(
      'User Disagree',
      name: 'storage_permission_tip_disagree',
      desc: '',
      args: [],
    );
  }

  /// `This feature cannot be used because you have permanently denied LX access to the phone storage.\nIf you want to continue, you need to go to System Permission Management Set Luo Xue’s storage permission to allow.`
  String get storage_permission_tip_disagree_ask_again {
    return Intl.message(
      'This feature cannot be used because you have permanently denied LX access to the phone storage.\nIf you want to continue, you need to go to System Permission Management Set Luo Xue’s storage permission to allow.',
      name: 'storage_permission_tip_disagree_ask_again',
      desc: '',
      args: [],
    );
  }

  /// `To use this function, you need to allow LX to access the phone storage. Do you agree and continue?`
  String get storage_permission_tip_request {
    return Intl.message(
      'To use this function, you need to allow LX to access the phone storage. Do you agree and continue?',
      name: 'storage_permission_tip_request',
      desc: '',
      args: [],
    );
  }

  /// `Merge the content of the two lists and remove the duplicates`
  String get sync__dislike_mode_merge_tip_desc {
    return Intl.message(
      'Merge the content of the two lists and remove the duplicates',
      name: 'sync__dislike_mode_merge_tip_desc',
      desc: '',
      args: [],
    );
  }

  /// `"Cancel sync" will not use the dislike list sync feature`
  String get sync__dislike_mode_other_tip_desc {
    return Intl.message(
      '"Cancel sync" will not use the dislike list sync feature',
      name: 'sync__dislike_mode_other_tip_desc',
      desc: '',
      args: [],
    );
  }

  /// `The list of overriddens will be replaced with the list of overriders`
  String get sync__dislike_mode_overwrite_tip_desc {
    return Intl.message(
      'The list of overriddens will be replaced with the list of overriders',
      name: 'sync__dislike_mode_overwrite_tip_desc',
      desc: '',
      args: [],
    );
  }

  /// `Choose how to sync with {name}'s dislike list`
  String sync__dislike_mode_title(Object name) {
    return Intl.message(
      'Choose how to sync with $name\'s dislike list',
      name: 'sync__dislike_mode_title',
      desc: '',
      args: [name],
    );
  }

  /// `Merge the lists on both sides together, the same songs will be removed (removed is the merged song), and different songs will be added.`
  String get sync__list_mode_merge_tip_desc {
    return Intl.message(
      'Merge the lists on both sides together, the same songs will be removed (removed is the merged song), and different songs will be added.',
      name: 'sync__list_mode_merge_tip_desc',
      desc: '',
      args: [],
    );
  }

  /// `"Cancel Sync" will not use list sync.`
  String get sync__list_mode_other_tip_desc {
    return Intl.message(
      '"Cancel Sync" will not use list sync.',
      name: 'sync__list_mode_other_tip_desc',
      desc: '',
      args: [],
    );
  }

  /// `The list with the same list ID of the covered person and the covered person will be deleted and replaced with the covered person's list (lists with different list IDs will be merged together). If you check Complete coverage, all lists of the covered person will be removed. \nand then replace with a list of overriders.`
  String get sync__list_mode_overwrite_tip_desc {
    return Intl.message(
      'The list with the same list ID of the covered person and the covered person will be deleted and replaced with the covered person\'s list (lists with different list IDs will be merged together). If you check Complete coverage, all lists of the covered person will be removed. \nand then replace with a list of overriders.',
      name: 'sync__list_mode_overwrite_tip_desc',
      desc: '',
      args: [],
    );
  }

  /// `Choose how to sync lists with {name}`
  String sync__list_mode_title(Object name) {
    return Intl.message(
      'Choose how to sync lists with $name',
      name: 'sync__list_mode_title',
      desc: '',
      args: [name],
    );
  }

  /// `Local list merge remote list`
  String get sync__mode_merge_btn_local_remote {
    return Intl.message(
      'Local list merge remote list',
      name: 'sync__mode_merge_btn_local_remote',
      desc: '',
      args: [],
    );
  }

  /// `Remote List Merge Local List`
  String get sync__mode_merge_btn_remote_local {
    return Intl.message(
      'Remote List Merge Local List',
      name: 'sync__mode_merge_btn_remote_local',
      desc: '',
      args: [],
    );
  }

  /// `Merge: `
  String get sync__mode_merge_tip {
    return Intl.message(
      'Merge: ',
      name: 'sync__mode_merge_tip',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get sync__mode_other_label {
    return Intl.message(
      'Other',
      name: 'sync__mode_other_label',
      desc: '',
      args: [],
    );
  }

  /// `Other: `
  String get sync__mode_other_tip {
    return Intl.message(
      'Other: ',
      name: 'sync__mode_other_tip',
      desc: '',
      args: [],
    );
  }

  /// `Full coverage`
  String get sync__mode_overwrite {
    return Intl.message(
      'Full coverage',
      name: 'sync__mode_overwrite',
      desc: '',
      args: [],
    );
  }

  /// `Cancel sync`
  String get sync__mode_overwrite_btn_cancel {
    return Intl.message(
      'Cancel sync',
      name: 'sync__mode_overwrite_btn_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Local list override remote list`
  String get sync__mode_overwrite_btn_local_remote {
    return Intl.message(
      'Local list override remote list',
      name: 'sync__mode_overwrite_btn_local_remote',
      desc: '',
      args: [],
    );
  }

  /// `Remote List Override Local List`
  String get sync__mode_overwrite_btn_remote_local {
    return Intl.message(
      'Remote List Override Local List',
      name: 'sync__mode_overwrite_btn_remote_local',
      desc: '',
      args: [],
    );
  }

  /// `Cover`
  String get sync__mode_overwrite_label {
    return Intl.message(
      'Cover',
      name: 'sync__mode_overwrite_label',
      desc: '',
      args: [],
    );
  }

  /// `Over: `
  String get sync__mode_overwrite_tip {
    return Intl.message(
      'Over: ',
      name: 'sync__mode_overwrite_tip',
      desc: '',
      args: [],
    );
  }

  /// `Not connected`
  String get sync_status_disabled {
    return Intl.message(
      'Not connected',
      name: 'sync_status_disabled',
      desc: '',
      args: [],
    );
  }

  /// `Black`
  String get theme_black {
    return Intl.message(
      'Black',
      name: 'theme_black',
      desc: '',
      args: [],
    );
  }

  /// `Blue`
  String get theme_blue {
    return Intl.message(
      'Blue',
      name: 'theme_blue',
      desc: '',
      args: [],
    );
  }

  /// `Purple Blue`
  String get theme_blue2 {
    return Intl.message(
      'Purple Blue',
      name: 'theme_blue2',
      desc: '',
      args: [],
    );
  }

  /// `Blue Plus`
  String get theme_blue_plus {
    return Intl.message(
      'Blue Plus',
      name: 'theme_blue_plus',
      desc: '',
      args: [],
    );
  }

  /// `Brown`
  String get theme_brown {
    return Intl.message(
      'Brown',
      name: 'theme_brown',
      desc: '',
      args: [],
    );
  }

  /// `China Ink`
  String get theme_china_ink {
    return Intl.message(
      'China Ink',
      name: 'theme_china_ink',
      desc: '',
      args: [],
    );
  }

  /// `Green`
  String get theme_green {
    return Intl.message(
      'Green',
      name: 'theme_green',
      desc: '',
      args: [],
    );
  }

  /// `Grey`
  String get theme_grey {
    return Intl.message(
      'Grey',
      name: 'theme_grey',
      desc: '',
      args: [],
    );
  }

  /// `New Year`
  String get theme_happy_new_year {
    return Intl.message(
      'New Year',
      name: 'theme_happy_new_year',
      desc: '',
      args: [],
    );
  }

  /// `Mid-Autumn`
  String get theme_mid_autumn {
    return Intl.message(
      'Mid-Autumn',
      name: 'theme_mid_autumn',
      desc: '',
      args: [],
    );
  }

  /// `Ming`
  String get theme_ming {
    return Intl.message(
      'Ming',
      name: 'theme_ming',
      desc: '',
      args: [],
    );
  }

  /// `Naruto`
  String get theme_naruto {
    return Intl.message(
      'Naruto',
      name: 'theme_naruto',
      desc: '',
      args: [],
    );
  }

  /// `Orange`
  String get theme_orange {
    return Intl.message(
      'Orange',
      name: 'theme_orange',
      desc: '',
      args: [],
    );
  }

  /// `Pink`
  String get theme_pink {
    return Intl.message(
      'Pink',
      name: 'theme_pink',
      desc: '',
      args: [],
    );
  }

  /// `Purple`
  String get theme_purple {
    return Intl.message(
      'Purple',
      name: 'theme_purple',
      desc: '',
      args: [],
    );
  }

  /// `Red`
  String get theme_red {
    return Intl.message(
      'Red',
      name: 'theme_red',
      desc: '',
      args: [],
    );
  }

  /// `Cancel timing`
  String get timeout_exit_btn_cancel {
    return Intl.message(
      'Cancel timing',
      name: 'timeout_exit_btn_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Update timing`
  String get timeout_exit_btn_update {
    return Intl.message(
      'Update timing',
      name: 'timeout_exit_btn_update',
      desc: '',
      args: [],
    );
  }

  /// `Cancel exit`
  String get timeout_exit_btn_wait_cancel {
    return Intl.message(
      'Cancel exit',
      name: 'timeout_exit_btn_wait_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Timeout expired, waiting to exit...`
  String get timeout_exit_btn_wait_tip {
    return Intl.message(
      'Timeout expired, waiting to exit...',
      name: 'timeout_exit_btn_wait_tip',
      desc: '',
      args: [],
    );
  }

  /// `Enter countdown minutes`
  String get timeout_exit_input_tip {
    return Intl.message(
      'Enter countdown minutes',
      name: 'timeout_exit_input_tip',
      desc: '',
      args: [],
    );
  }

  /// `Wait for the song to finish playing and then stop playing`
  String get timeout_exit_label_isPlayed {
    return Intl.message(
      'Wait for the song to finish playing and then stop playing',
      name: 'timeout_exit_label_isPlayed',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get timeout_exit_min {
    return Intl.message(
      'Minutes',
      name: 'timeout_exit_min',
      desc: '',
      args: [],
    );
  }

  /// `Timeout stop playing has been cancelled`
  String get timeout_exit_tip_cancel {
    return Intl.message(
      'Timeout stop playing has been cancelled',
      name: 'timeout_exit_tip_cancel',
      desc: '',
      args: [],
    );
  }

  /// `You can only set up to {num} minutes`
  String timeout_exit_tip_max(Object num) {
    return Intl.message(
      'You can only set up to $num minutes',
      name: 'timeout_exit_tip_max',
      desc: '',
      args: [num],
    );
  }

  /// `Set timer to stop playing`
  String get timeout_exit_tip_off {
    return Intl.message(
      'Set timer to stop playing',
      name: 'timeout_exit_tip_off',
      desc: '',
      args: [],
    );
  }

  /// `Stop playing after {time}`
  String timeout_exit_tip_on(Object time) {
    return Intl.message(
      'Stop playing after $time',
      name: 'timeout_exit_tip_on',
      desc: '',
      args: [time],
    );
  }

  /// `Source change`
  String get toggle_source {
    return Intl.message(
      'Source change',
      name: 'toggle_source',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change the source, please try to manually search for the song in other sources to play`
  String get toggle_source_failed {
    return Intl.message(
      'Failed to change the source, please try to manually search for the song in other sources to play',
      name: 'toggle_source_failed',
      desc: '',
      args: [],
    );
  }

  /// `Try switching to another source...`
  String get toggle_source_try {
    return Intl.message(
      'Try switching to another source...',
      name: 'toggle_source_try',
      desc: '',
      args: [],
    );
  }

  /// `Already understood 👌`
  String get understand {
    return Intl.message(
      'Already understood 👌',
      name: 'understand',
      desc: '',
      args: [],
    );
  }

  /// `Custom source [{name}] failed to initialize:`
  String user_api__init_failed_alert(Object name) {
    return Intl.message(
      'Custom source [$name] failed to initialize:',
      name: 'user_api__init_failed_alert',
      desc: '',
      args: [name],
    );
  }

  /// `Invalid custom source file`
  String get user_api_add_failed_tip {
    return Intl.message(
      'Invalid custom source file',
      name: 'user_api_add_failed_tip',
      desc: '',
      args: [],
    );
  }

  /// `Allow update popups to be displayed`
  String get user_api_allow_show_update_alert {
    return Intl.message(
      'Allow update popups to be displayed',
      name: 'user_api_allow_show_update_alert',
      desc: '',
      args: [],
    );
  }

  /// `Import`
  String get user_api_btn_import {
    return Intl.message(
      'Import',
      name: 'user_api_btn_import',
      desc: '',
      args: [],
    );
  }

  /// `Local import`
  String get user_api_btn_import_local {
    return Intl.message(
      'Local import',
      name: 'user_api_btn_import_local',
      desc: '',
      args: [],
    );
  }

  /// `Online import`
  String get user_api_btn_import_online {
    return Intl.message(
      'Online import',
      name: 'user_api_btn_import_online',
      desc: '',
      args: [],
    );
  }

  /// `Import`
  String get user_api_btn_import_online_input_confirm {
    return Intl.message(
      'Import',
      name: 'user_api_btn_import_online_input_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Importing...`
  String get user_api_btn_import_online_input_loading {
    return Intl.message(
      'Importing...',
      name: 'user_api_btn_import_online_input_loading',
      desc: '',
      args: [],
    );
  }

  /// `Please enter HTTP link`
  String get user_api_btn_import_online_input_tip {
    return Intl.message(
      'Please enter HTTP link',
      name: 'user_api_btn_import_online_input_tip',
      desc: '',
      args: [],
    );
  }

  /// `It’s actually empty here 😲`
  String get user_api_empty {
    return Intl.message(
      'It’s actually empty here 😲',
      name: 'user_api_empty',
      desc: '',
      args: [],
    );
  }

  /// `Select custom source file`
  String get user_api_import_desc {
    return Intl.message(
      'Select custom source file',
      name: 'user_api_import_desc',
      desc: '',
      args: [],
    );
  }

  /// `Custom source import failed: \n{message}`
  String user_api_import_failed_tip(Object message) {
    return Intl.message(
      'Custom source import failed: \n$message',
      name: 'user_api_import_failed_tip',
      desc: '',
      args: [message],
    );
  }

  /// `Import successful 🎉`
  String get user_api_import_success_tip {
    return Intl.message(
      'Import successful 🎉',
      name: 'user_api_import_success_tip',
      desc: '',
      args: [],
    );
  }

  /// `A maximum of 20 sources can exist at the same time🤪\n\nIf you want to continue importing, please remove some old sources to make room.`
  String get user_api_max_tip {
    return Intl.message(
      'A maximum of 20 sources can exist at the same time🤪\n\nIf you want to continue importing, please remove some old sources to make room.',
      name: 'user_api_max_tip',
      desc: '',
      args: [],
    );
  }

  /// `Tip: Although we have isolated the running environment of the script as much as possible, importing scripts containing malicious behaviors may still affect your system, so please import with caution.`
  String get user_api_note {
    return Intl.message(
      'Tip: Although we have isolated the running environment of the script as much as possible, importing scripts containing malicious behaviors may still affect your system, so please import with caution.',
      name: 'user_api_note',
      desc: '',
      args: [],
    );
  }

  /// `Source writing instructions: `
  String get user_api_readme {
    return Intl.message(
      'Source writing instructions: ',
      name: 'user_api_readme',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to remove {name}?`
  String user_api_remove_tip(Object name) {
    return Intl.message(
      'Do you really want to remove $name?',
      name: 'user_api_remove_tip',
      desc: '',
      args: [name],
    );
  }

  /// `Custom source management (experimental)`
  String get user_api_title {
    return Intl.message(
      'Custom source management (experimental)',
      name: 'user_api_title',
      desc: '',
      args: [],
    );
  }

  /// `Custom source [{name}] found new version`
  String user_api_update_alert(Object name) {
    return Intl.message(
      'Custom source [$name] found new version',
      name: 'user_api_update_alert',
      desc: '',
      args: [name],
    );
  }

  /// `Open update address`
  String get user_api_update_alert_open_url {
    return Intl.message(
      'Open update address',
      name: 'user_api_update_alert_open_url',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get version_btn_close {
    return Intl.message(
      'Close',
      name: 'version_btn_close',
      desc: '',
      args: [],
    );
  }

  /// `I am trying to download...{current}/{total} ({progress}%)`
  String version_btn_downloading(
      Object current, Object total, Object progress) {
    return Intl.message(
      'I am trying to download...$current/$total ($progress%)',
      name: 'version_btn_downloading',
      desc: '',
      args: [current, total, progress],
    );
  }

  /// `Retry`
  String get version_btn_failed {
    return Intl.message(
      'Retry',
      name: 'version_btn_failed',
      desc: '',
      args: [],
    );
  }

  /// `Ignore`
  String get version_btn_ignore {
    return Intl.message(
      'Ignore',
      name: 'version_btn_ignore',
      desc: '',
      args: [],
    );
  }

  /// `Cancel ignore`
  String get version_btn_ignore_cancel {
    return Intl.message(
      'Cancel ignore',
      name: 'version_btn_ignore_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Background download`
  String get version_btn_min {
    return Intl.message(
      'Background download',
      name: 'version_btn_min',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get version_btn_new {
    return Intl.message(
      'Update',
      name: 'version_btn_new',
      desc: '',
      args: [],
    );
  }

  /// `Project Homepage`
  String get version_btn_unknown {
    return Intl.message(
      'Project Homepage',
      name: 'version_btn_unknown',
      desc: '',
      args: [],
    );
  }

  /// `Install`
  String get version_btn_update {
    return Intl.message(
      'Install',
      name: 'version_btn_update',
      desc: '',
      args: [],
    );
  }

  /// `Update description: `
  String get version_label_change_log {
    return Intl.message(
      'Update description: ',
      name: 'version_label_change_log',
      desc: '',
      args: [],
    );
  }

  /// `Current version: `
  String get version_label_current_ver {
    return Intl.message(
      'Current version: ',
      name: 'version_label_current_ver',
      desc: '',
      args: [],
    );
  }

  /// `History version: `
  String get version_label_history {
    return Intl.message(
      'History version: ',
      name: 'version_label_history',
      desc: '',
      args: [],
    );
  }

  /// `Latest version: `
  String get version_label_latest_ver {
    return Intl.message(
      'Latest version: ',
      name: 'version_label_latest_ver',
      desc: '',
      args: [],
    );
  }

  /// `Checking for updates...⏳`
  String get version_tip_checking {
    return Intl.message(
      'Checking for updates...⏳',
      name: 'version_tip_checking',
      desc: '',
      args: [],
    );
  }

  /// `The installation package has been downloaded.`
  String get version_tip_downloaded {
    return Intl.message(
      'The installation package has been downloaded.',
      name: 'version_tip_downloaded',
      desc: '',
      args: [],
    );
  }

  /// `The download of the installation package failed. You can try again or go to the project address to manually download the new version update.`
  String get version_tip_failed {
    return Intl.message(
      'The download of the installation package failed. You can try again or go to the project address to manually download the new version update.',
      name: 'version_tip_failed',
      desc: '',
      args: [],
    );
  }

  /// `The software is up to date, please enjoy it~🥂`
  String get version_tip_latest {
    return Intl.message(
      'The software is up to date, please enjoy it~🥂',
      name: 'version_tip_latest',
      desc: '',
      args: [],
    );
  }

  /// `It has been switched to background download, you can go to Settings-Software Update and reopen this pop-up window`
  String get version_tip_min {
    return Intl.message(
      'It has been switched to background download, you can go to Settings-Software Update and reopen this pop-up window',
      name: 'version_tip_min',
      desc: '',
      args: [],
    );
  }

  /// `Failed to obtain the latest version information, it is recommended to manually go to the project address to check if there is a new version`
  String get version_tip_unknown {
    return Intl.message(
      'Failed to obtain the latest version information, it is recommended to manually go to the project address to check if there is a new version',
      name: 'version_tip_unknown',
      desc: '',
      args: [],
    );
  }

  /// `⏳ Checking for updates ⏳`
  String get version_title_checking {
    return Intl.message(
      '⏳ Checking for updates ⏳',
      name: 'version_title_checking',
      desc: '',
      args: [],
    );
  }

  /// `❌ Download failed ❌`
  String get version_title_failed {
    return Intl.message(
      '❌ Download failed ❌',
      name: 'version_title_failed',
      desc: '',
      args: [],
    );
  }

  /// `🎉 The current version is already the latest 🎊`
  String get version_title_latest {
    return Intl.message(
      '🎉 The current version is already the latest 🎊',
      name: 'version_title_latest',
      desc: '',
      args: [],
    );
  }

  /// `🌟 New version found 🌟`
  String get version_title_new {
    return Intl.message(
      '🌟 New version found 🌟',
      name: 'version_title_new',
      desc: '',
      args: [],
    );
  }

  /// `❓ Failed to get the latest version information ❓`
  String get version_title_unknown {
    return Intl.message(
      '❓ Failed to get the latest version information ❓',
      name: 'version_title_unknown',
      desc: '',
      args: [],
    );
  }

  /// `🚀 Program update 🚀`
  String get version_title_update {
    return Intl.message(
      '🚀 Program update 🚀',
      name: 'version_title_update',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
