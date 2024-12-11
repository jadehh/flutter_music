/*
 * @File     : check_box_view.dart
 * @Author   : jade
 * @Date     : 2024/12/10 17:10
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/text_view.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/models/db/user_api_info.dart';
import 'package:flutter_music_core/utils/source.dart';
import 'package:get/get.dart';

class CheckBoxView extends StatelessWidget {
  final UserApiInfo userApiInfo;
  final int index;
  CheckBoxView({required this.index, required this.userApiInfo, super.key});

  @override
  Widget build(BuildContext context) {
    userApiInfo.selectStatus.value = userApiInfo.selected;
    // TODO: implement build
    return Obx(()=>CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: userApiInfo.selectStatus.value,
        onChanged: (value) {
          userApiInfo.selected = value!;
          userApiInfo.selectStatus.value = userApiInfo.selected;
          BoxUtil.editUserApiInfo(index, userApiInfo);
          if(!userApiInfo.selected){
            SourceUtil.removeInitJs(userApiInfo);
          }else{
            SourceUtil.initJS(userApiInfo);
          }
          },
        title: Row(
          children: [
            TextView(userApiInfo.name),
            SizedBox(
              width: 5,
            ),
            Text(
              userApiInfo.version,
              style: TextStyle(
                color: Colors.grey.withOpacity(0.7),
                fontSize: 10,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            userApiInfo.initStatus.value == 0 ? SizedBox.shrink():TextView(
                "[${userApiInfo.initStatus.value == 1 ?  S.of(context).setting_basic_source_status_initing: userApiInfo.initStatus.value == 2 ? S.of(context).setting_basic_source_status_failed:  S.of(context).setting_basic_source_status_success}]"
            ),
          ],
        )));
  }

}
