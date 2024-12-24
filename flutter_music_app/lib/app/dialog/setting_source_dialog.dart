/*
 * @File     : setting_source_dialog.dart
 * @Author   : jade
 * @Date     : 2024/12/3 14:53
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/material.dart' ;
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/models/db/user_api_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';





class SettingSourceDialog extends StatefulWidget {
  final List<UserApiInfo> apiItems;
  const SettingSourceDialog({super.key, required this.apiItems});

  @override
  State<StatefulWidget> createState()=>_SettingSourceDialog();

}


class _SettingSourceDialog extends State<SettingSourceDialog>{
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 60, 40, 60),
      child: Container(
        width: 200.w,
        height: 400.h,
        color: Colors.white,
        child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(Icons.close),
                    )),
              ),
              Text(S.of(context).user_api_title),
              Expanded(child: widget.apiItems.isEmpty ? Center(child: Text(S.of(context).user_api_empty)):ListView(children:
              List.generate(widget.apiItems.length, (i) {
                return _sourceWidget(widget.apiItems[i]);
              }))),
              Padding(padding: const EdgeInsets.fromLTRB(20,5,20,5),child: Row(
                children: [
                  Text(S.of(context).user_api_readme),
                  //     Link(
                  //       // from the url_launcher package
                  //       uri: Uri.parse('https://lxmusic.toside.cn/mobile/custom-source'),
                  //       builder: (context, open) {
                  //         return HyperlinkButton(
                  //           onPressed: open,
                  //           child: const Text('FAQ', style:TextStyle(decoration: TextDecoration.underline)),
                  //         );
                  //       },
                  //     ),
                ],
              ),),
              Padding(padding: const EdgeInsets.fromLTRB(20,5,20,5),child:Align(alignment: Alignment.centerLeft,child: Text(S.of(context).user_api_note),),),
              Padding(padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: FilledButton(onPressed: ()=>(),child: Text(S.of(context).cancel))),
                  const SizedBox(width: 50,),
                  Expanded(child: _dropdownButton()),
                ],),),
            ]
        )
        ),
      );
  }

  showSelectSourceView(){

  }


  // void selectFile(context) async {
  //   // 选择单个文件
  //   try{
  //     FilePickerResult? result = await FilePicker.platform.pickFiles(
  //       type: FileType.custom,
  //       allowedExtensions: ['js'],
  //     );
  //     if (result != null) {
  //       PlatformFile platformFile = result.files.first;
  //       File file = File(platformFile.path!);
  //       var content = await file.readAsString();
  //       // _logger.info("文件路径:$platformFile.path,文件名称:$platformFile.name,文件内容$content");
  //       widget.apiItems.add(JsUtil.loadScript(content));
  //       // for(int i=0;i<10;i++){
  //       //   _sourceItems.add(SourceItem(path: file.path, name: file.name));
  //       // }
  //       setState(() {
  //       });
  //       SmartDialog.showToast(S.of(context).user_api_import_success_tip);
  //       // 处理文件
  //     } else {
  //       // SmartDialog.showToast(S.of(context).user_api_import_failed_tip(S.of(context).cancel));
  //     }
  //   }
  //   catch(e){
  //     _logger.error(e.toString());
  //     SmartDialog.showToast(S.of(context).user_api_import_failed_tip(S.of(context).user_api_add_failed_tip));
  //   }
  // }

  //imitate widget
  Widget _dropdownButton() {

    return DropdownButton(items:[DropdownMenuItem(child: Text(S.of(context).user_api_btn_import_local),onTap: (){},)], onChanged: (value){});
    //
    // return DropDownButton(
    //   buttonBuilder: (_,callBack)=>(FilledButton(onPressed: (){
    //     callBack!();
    //   },child: TextView(S.of(context).user_api_btn_import),)),
    //   trailing: null,
    //   title: TextView(S.of(context).user_api_btn_import),
    //   menuColor: Colors.white,
    //   items: [
    //     MenuFlyoutItem(text:  TextView(S.of(context).user_api_btn_import_local), onPressed: (){
    //       selectFile(context);
    //     }),
    //     MenuFlyoutItem(text:  TextView(S.of(context).user_api_btn_import_online), onPressed: (){}),
    //   ],
    // );
  }


  //Source Widget

  Widget _sourceWidget(UserApiInfo info){
    return Padding(padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),child:
    Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(info.name),
              const SizedBox(width: 10,),
              Text(info.version,style: TextStyle(
                color: Colors.grey.withOpacity(0.5),
              ),),
                const SizedBox(width: 10,),
                Text(info.author,style: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
              )),
            ],
            ),
            const SizedBox(height: 5),
            Text(info.description,style:TextStyle(
              color: Colors.grey.withOpacity(0.5),
            )),
            const SizedBox(height: 5,),
            Checkbox(value: info.allowShowUpdateAlert, onChanged: (value){
              info.allowShowUpdateAlert=value!;
              setState(() {
              });
            })
            ],
        )),
        IconButton(icon: const Icon(Icons.close),onPressed: (){
          widget.apiItems.remove(info);
          setState(() {
          });
        },),
      ],
    )
    );
  }
}