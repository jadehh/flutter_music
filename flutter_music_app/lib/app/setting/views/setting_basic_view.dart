// /*
//  * @File     : setting_basic_view.dart
//  * @Author   : jade
//  * @Date     : 2024/11/28 9:23
//  * @Email    : jadehh@1ive.com
//  * @Software : Samples
//  * @Desc     : 基本设置
//  */
//
// import 'package:flutter/material.dart';
// import 'package:flutter_music/app/base/views/check_box_view.dart';
// import 'package:flutter_music/app/base/views/text_view.dart';
// import 'package:flutter_music/app/constant.dart';
// import 'package:flutter_music/app/base/views/check_box_list_view.dart';
// import 'package:flutter_music/app/base/views/theme_button_view.dart';
// import 'package:flutter_music/app/dialog/setting_source_dialog.dart';
// import 'package:flutter_music/app/theme.dart';
// import 'package:flutter_music/generated/l10n.dart';
//
// class SettingBasicView extends StatefulWidget {
//   const SettingBasicView({super.key});
//
//   @override
//   State<StatefulWidget> createState() => _SettingBasicView();
// }
//
// class _SettingBasicView extends State<SettingBasicView> {
//   late List<UserApiInfo> _apiInfoItems;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _apiInfoItems = [];
//   }
//
//   var _showMoreThemeStatus = false;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return SingleChildScrollView(
//       child:  Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const Padding(padding: EdgeInsets.all(5)),
//           Row(
//             children: [
//               const SizedBox(width: 5,),
//               Container(
//                 width: 5,
//                 color: FluentTheme.of(context).accentColor,
//                 child: const Text(""),
//               ),
//               const SizedBox(width: 5,),
//               Align(
//                   alignment: Alignment.centerLeft,
//                   child: TextView(S.of(context).setting_basic))
//             ],
//           ),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxView(value: false,text: S.of(context).setting_basic_startup_auto_play,callback: (value)=>print("setting_basic_startup_auto_play$value"),),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxView(value: false,text: S.of(context).setting_basic_startup_push_play_detail_screen,callback: (value)=>print("setting_basic_startup_push_play_detail_screen$value")),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxView(value: false,text: S.of(context).setting_basic_show_back_btn,callback: changeBackButton),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxView(value: false,text: S.of(context).setting_basic_show_exit_btn,callback: changeExitButton),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxView(value: false,text: S.of(context).setting_basic_auto_hide_play_bar,callback: (value)=>print("setting_basic_auto_hide_play_bar$value")),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxView(value: false,text: S.of(context).setting_basic_home_page_scroll,callback: (value)=>print("setting_basic_home_page_scroll$value")),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxView(value: false,text: S.of(context).setting_basic_use_system_file_selector,callback: (value)=>print("setting_basic_use_system_file_selector$value"),tips:S.of(context).setting_basic_use_system_file_selector_tip),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxView(value: false,text: S.of(context).setting_basic_always_keep_statusbar_height,callback: (value)=>print("setting_basic_always_keep_statusbar_height$value"),tips:S.of(context).setting_basic_always_keep_statusbar_height_tip),
//           const Padding(padding: EdgeInsets.all(5)),
//           //主题设置
//           Padding(padding: const EdgeInsets.only(left: 10),child: Align(alignment: Alignment.centerLeft,child: TextView(S.of(context).setting_basic_theme))),
//           const Padding(padding: EdgeInsets.all(5)),
//           // _showMoreThemeStatus ? getMoreThemeView(appTheme):getThemeView(appTheme),
//           const Padding(padding: EdgeInsets.all(5)),
//           // CheckBoxView(value: appTheme.mode == ThemeMode.dark ,text: S.of(context).setting_basic_theme_auto_theme,callback: changeTheme),
//           // 语言设置
//           const Padding(padding: EdgeInsets.all(5)),
//           Padding(padding: const EdgeInsets.only(left: 10),child: Align(alignment: Alignment.centerLeft,child: TextView(S.of(context).setting_basic_lang))),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxListView(checkBoxItems: [CheckBoxItem(title: "简体中文", callBack: setChinese,value: appTheme.locale == const Locale("zh")),CheckBoxItem(title: "English", callBack: setEnglish,value: appTheme.locale == const Locale("en"))]),
//           const Padding(padding: EdgeInsets.all(5)),
//           Padding(padding: const EdgeInsets.only(left: 10),child: Align(alignment: Alignment.centerLeft,child: TextView(S.of(context).setting_basic_font_size))),
//           const Padding(padding: EdgeInsets.all(5)),
//           Padding(padding: const EdgeInsets.only(left: 25),child: Align(alignment: Alignment.centerLeft,child: Text(S.of(context).setting_basic_font_size_preview,style: TextStyle(color: FluentTheme.of(context).accentColor,fontSize: appTheme.fontSize)))),
//           const Padding(padding: EdgeInsets.all(5)),
//           CheckBoxListView(checkBoxItems: [
//             CheckBoxItem(title: S.of(context).setting_basic_font_size_80, callBack: setFontSize80,value: appTheme.fontSize == AppTheme.settingBasicFontSize80),
//             CheckBoxItem(title: S.of(context).setting_basic_font_size_90, callBack: setFontSize90,value: appTheme.fontSize == AppTheme.settingBasicFontSize90),
//             CheckBoxItem(title: S.of(context).setting_basic_font_size_100, callBack: setFontSize100,value: appTheme.fontSize == AppTheme.settingBasicFontSize100),
//             CheckBoxItem(title: S.of(context).setting_basic_font_size_110, callBack: setFontSize110,value: appTheme.fontSize == AppTheme.settingBasicFontSize110),
//             CheckBoxItem(title: S.of(context).setting_basic_font_size_120, callBack: setFontSize120,value: appTheme.fontSize == AppTheme.settingBasicFontSize120),
//             CheckBoxItem(title: S.of(context).setting_basic_font_size_130, callBack: setFontSize130,value: appTheme.fontSize == AppTheme.settingBasicFontSize130),
//           ]),
//           const Padding(padding: EdgeInsets.all(5)),
//           //音乐来源
//           Padding(padding: const EdgeInsets.only(left: 10),child: Align(alignment: Alignment.centerLeft,child: TextView(S.of(context).setting_basic_source))),
//           const Padding(padding: EdgeInsets.all(5)),
//           Align(alignment: Alignment.centerLeft,child:Padding(padding: const EdgeInsets.only(left: 25),child:  FilledButton(child: TextView(S.of(context).setting_basic_source_user_api_btn), onPressed: ()=>SmartDialog.show(builder: (BuildContext context) {
//             return SettingSourceDialog(apiItems: _apiInfoItems,);
//           }))),)
//         ],
//       ),
//     );
//   }
//
//   getMoreThemeView(appTheme){
//     final themeItems = Constant.settingThemeItems(context);
//     return Padding(padding: const EdgeInsets.only(left: 25),child: Align(
//         alignment: Alignment.centerLeft,
//         child: Wrap(
//           alignment: WrapAlignment.start,
//           direction: Axis.horizontal,
//           spacing: 8,
//           children:  List.generate(themeItems.length, (index) {
//             return ThemeButtonView(color: themeItems[index].color, title: themeItems[index].text,appTheme: appTheme,);
//           },
//           ),
//         )),);
//     // return GridView.builder(
//     //     itemBuilder: (content,index)=>ThemeButtonView(color: themeItems[index].color, title: themeItems[index].text,appTheme: appTheme,),
//     //     itemCount: themeItems.length,
//     //     gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: MediaQuery.of(context).size.width ~/160,),
//     //     shrinkWrap: true,
//     //     physics:const NeverScrollableScrollPhysics()
//     // );//禁用滑动事件;
//   }
//
//   getThemeView(appTheme){
//      final themeItems = Constant.settingThemeItems(context);
//      return Align(
//          child:Row(
//        children: [
//          const SizedBox(width: 30),
//          ThemeButtonView(color: appTheme.color,title:themeItems.where((item)=>item.color == appTheme.color).first.text,appTheme: appTheme,),
//          IconButton(
//            icon:
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: [
//                Text(S.of(context).setting_basic_theme_more_btn_show,style: TextStyle(color:FluentTheme.of(context).accentColor,fontSize: appTheme.fontSize),),
//                const SizedBox(width: 5),
//                Icon(FluentIcons.chevron_right,color:FluentTheme.of(context).accentColor,)],
//            ),
//            onPressed:  () => setState(() {
//              _showMoreThemeStatus = true;
//            }),
//          )
//        ],
//      ));
//   }
//
//   changeExitButton(value){
//     Provider.of<AppTheme>(context,listen: false).setExitStatus = value;
//   }
//
//   changeBackButton(value){
//     Provider.of<AppTheme>(context, listen: false).setBackStatus = value;
//   }
//
//   setFontSize80(value){
//     setFontSize(AppTheme.settingBasicFontSize80);
//   }
//   setFontSize90(value){
//     setFontSize(AppTheme.settingBasicFontSize90);
//   }
//   setFontSize100(value){
//     setFontSize(AppTheme.settingBasicFontSize100);
//   }
//   setFontSize110(value){
//     setFontSize(AppTheme.settingBasicFontSize110);
//   }
//   setFontSize120(value){
//     setFontSize(AppTheme.settingBasicFontSize120);
//   }
//   setFontSize130(value){
//     setFontSize(AppTheme.settingBasicFontSize130);
//   }
//
//
//   setFontSize(double fontSize){
//      AppTheme appTheme = Provider.of<AppTheme>(context,listen: false);
//     switch(fontSize){
//       case AppTheme.settingBasicFontSize80:
//         appTheme.fontSize = AppTheme.settingBasicFontSize80;
//         break;
//       case AppTheme.settingBasicFontSize90:
//         appTheme.fontSize = AppTheme.settingBasicFontSize90;
//         break;
//       case AppTheme.settingBasicFontSize100:
//         appTheme.fontSize = AppTheme.settingBasicFontSize100;
//         break;
//       case AppTheme.settingBasicFontSize110:
//         appTheme.fontSize = AppTheme.settingBasicFontSize110;
//         break;
//       case AppTheme.settingBasicFontSize120:
//         appTheme.fontSize = AppTheme.settingBasicFontSize120;
//         break;
//       case AppTheme.settingBasicFontSize130:
//         appTheme.fontSize = AppTheme.settingBasicFontSize130;
//         break;
//       default:
//         break;
//     }
//   }
//
//   changeTheme(value){
//     if(value){
//       Provider.of<AppTheme>(context, listen: false).mode = ThemeMode.dark;
//     }else{
//       Provider.of<AppTheme>(context, listen: false).mode = ThemeMode.light;
//     }
//   }
//   setChinese(value){
//     Provider.of<AppTheme>(context, listen: false).locale = const Locale("zh");
//   }
//   setEnglish(value){
//     Provider.of<AppTheme>(context, listen: false).locale = const Locale("en");
//   }
// }
