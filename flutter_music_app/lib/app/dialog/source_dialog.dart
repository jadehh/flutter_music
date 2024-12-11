/*
 * @File     : source_dialog.dart
 * @Author   : jade
 * @Date     : 2024/12/10 14:55
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music/app/base/views/text_view.dart';
import 'package:flutter_music/app/setting/controller/setting_basic_controller.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/models/db/user_api_info.dart';
import 'package:flutter_music_core/models/setting.dart';
import 'package:flutter_music_core/utils/source.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
class SourceDialog extends StatefulWidget{
  final String title;
  final SettingBasicController controller;
  const SourceDialog({required this.title, required this.controller, super.key});
  @override
  State<StatefulWidget> createState()=>_SourceDialog();
}

class _SourceDialog extends State<SourceDialog> {
  @override
  Widget build(BuildContext context) {
    final _popupMenu = GlobalKey<PopupMenuButtonState>();
    // TODO: implement build
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: Center(
        child: TextView(widget.title),
      ),
      content: Container(
        width: double.maxFinite,
        height:double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(()=>Expanded(
                child:SourceService.instance.sourceList.isEmpty
                    ? Center(child: TextView(S.of(context).user_api_empty))
                    : ListView(
                    children: List.generate(SourceService.instance.sourceList.length, (i) {
                      return _sourceWidget(context,SourceService.instance.sourceList[i]);
                    })))),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Row(
                children: [
                  TextView(S.of(context).user_api_readme),
                  InkWell(
                    onTap: () {
                      _open("https://lxmusic.toside.cn/mobile/custom-source");
                    },
                    child: Text('FAQ',
                        style: TextStyle(
                            fontSize: Setting.getFontSize(),
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).primaryColor)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextView(S.of(context).user_api_note),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
            onPressed: () => Get.back(), child: TextView(S.of(context).cancel)),
        PopupMenuButton(
          key: _popupMenu,
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextView(S.of(context).user_api_btn_import_local),
              onTap: () async{
                await selectFile(context);
              }
            ),
            PopupMenuItem(
              child: TextView(S.of(context).user_api_btn_import_online),
              onTap: () {},
            ),
          ],
          child: TextButton(
            child: TextView(S.of(context).user_api_btn_import),
            onPressed: () {
              _popupMenu.currentState?.showButtonMenu(); // <- Here
            },
          ),
          style: Theme.of(context).menuButtonTheme.style,
        )
      ],
    );
  }

  Future<void> _open(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch ${url}');
    }
  }

  Widget _sourceWidget(BuildContext context,UserApiInfo info) {
   return Padding(padding: EdgeInsets.only(bottom: 20),child: Row(
     children: [
       Expanded(child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(children: [
               Text(info.name),
               SizedBox(width: 5,),
               Text(info.version + "  " + info.author,style: TextStyle(
                 fontSize: 12,
                 color: Colors.grey.withOpacity(0.7),
               ),)
             ],),
             SizedBox(height: 5),
             Text(info.description,style: TextStyle(
               fontSize: 12,
               color: Colors.grey.withOpacity(0.7),
             ),),
             Row(children: [
               Checkbox(value: info.allowShowUpdateAlert, onChanged: (value){
                 info.allowShowUpdateAlert = value!;
                 setState(() {
                 });
               }),
               Text(S.of(context).user_api_allow_show_update_alert)
             ],)
             // CheckboxListTile(value: false, onChanged: (value){},title: Text(S.of(context).user_api_allow_show_update_alert), controlAffinity: ListTileControlAffinity.leading)
           ])),
       IconButton(onPressed: (){
         SourceService.instance.sourceList.remove(info);
       }, icon: Icon(Icons.delete,color: Theme.of(context).primaryColor,))
     ],
   ));
  }

 selectFile(context) async {
  // 选择单个文件
  try{
    FilePickerResult? result = await FilePicker.platform.pickFiles(type: FileType.custom,allowedExtensions: ['js']);
    try{
      if (result != null) {
        PlatformFile platformFile = result.files.first;
        File file = File(platformFile.path!);
        var content = await file.readAsString();
        UserApiInfo userApiInfo = SourceUtil.loadScript(content);
        BoxUtil.saveUserApiInfo(userApiInfo);
        SourceService.instance.sourceList.add(userApiInfo);
        SmartDialog.showToast(S.of(context).user_api_import_success_tip);
        // 处理文件
      } else {
        // SmartDialog.showToast(S.of(context).user_api_import_failed_tip(S.of(context).cancel));
      }
    }catch(e,s){
      Log.e(e.toString(),s);
    }
  }
  catch(e,s){
    Log.e(e.toString(),s);
    SmartDialog.showToast(S.of(context).user_api_import_failed_tip(S.of(context).user_api_add_failed_tip));
  }
}
}
