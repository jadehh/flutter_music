/*
 * @File     : setting_basic_page.dart
 * @Author   : jade
 * @Date     : 2024/12/6 15:09
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/divider_view.dart';
import 'package:flutter_music/app/base/views/text_view.dart';
import 'package:flutter_music/app/base/views/theme_button_view.dart';
import 'package:flutter_music/app/dialog/setting_source_dialog.dart';
import 'package:flutter_music/app/setting/controller/setting_basic_controller.dart';
import 'package:flutter_music/app/setting/views/setting_view.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/app/constant.dart';
import 'package:flutter_music_core/main.dart';
import 'package:flutter_music_core/model/user_api_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:get/get.dart';

enum Groceries { pickles, tomato, lettuce }

class SettingBasicPage extends GetView<SettingBasicController> {
  @override
  Widget build(BuildContext context) {
    final items = [
      SettingItem(
          title: S.of(context).setting_basic_startup_auto_play,
          subTitle: S.of(context).setting_basic,
          index: 0),
      SettingItem(
          title: S.of(context).setting_basic_startup_push_play_detail_screen,
          subTitle: S.of(context).setting_basic,
          index: 0),
      SettingItem(
          title: S.of(context).setting_basic_show_back_btn,
          subTitle: S.of(context).setting_basic,
          index: 0),
      SettingItem(
          title: S.of(context).setting_basic_show_exit_btn,
          subTitle: S.of(context).setting_basic,
          index: 0),
      SettingItem(
          title: S.of(context).setting_basic_auto_hide_play_bar,
          subTitle: S.of(context).setting_basic,
          index: 0),
      SettingItem(
          title: S.of(context).setting_basic_home_page_scroll,
          subTitle: S.of(context).setting_basic,
          index: 0),
      SettingItem(
          title: S.of(context).setting_basic_use_system_file_selector,
          subTitle: S.of(context).setting_basic,
          index: 0),
      SettingItem(
          title: S.of(context).setting_basic_always_keep_statusbar_height,
          subTitle: S.of(context).setting_basic,
          index: 0),
      SettingItem(
          title: S.of(context).setting_basic_theme,
          subTitle: S.of(context).setting_basic_theme_mode,
          index: 8),
      SettingItem(
          title: S.of(context).setting_basic_lang,
          subTitle: S.of(context).setting_basic_lang,
          index: 9),
      SettingItem(
          title: S.of(context).setting_basic_font_size,
          subTitle: S.of(context).setting_basic_font_size,
          index: 10),
      SettingItem(
          title: S.of(context).user_api_title,
          subTitle: S.of(context).setting_basic_source,
          index: 11),
    ];
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).setting_basic)),
      body: ListView.separated(
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox.shrink();
          } else if (index == 9) {
            return _buildThemeView(context, controller);
          } else if (index == 10) {
            return _buildLanView(context, controller);
          } else if (index == 11) {
            return _buildFontView(context, controller);
          } else if (index == 12){
            return _buildSourceView(context,controller,items[index-1].title);
          }else {
            return ListTile(
                title: TextView(items[index - 1].title),
                trailing: Obx(() => Switch(
                    value: controller.settingState[index - 1],
                    onChanged: (value) {
                      controller.changeState(index: index - 1, value: value);
                    })));
          }
        },
        separatorBuilder: (context, index) {
          if (index == items[index].index) {
            return DividerView(items[index].subTitle);
          } else {
            return Divider();
          }
        },
        itemCount: items.length + 1,
      ),
    );
  }

  static _buildThemeView(
      BuildContext context, SettingBasicController controller) {
    final themeItems = [
      ThemeItem(
          scheme: AppTheme.theme_green,
          title: S.of(context).theme_green,
          index: 0),
      ThemeItem(
          scheme: AppTheme.theme_pink,
          title: S.of(context).theme_pink,
          index: 1),
      ThemeItem(
          scheme: AppTheme.theme_orange,
          title: S.of(context).theme_orange,
          index: 2),
      ThemeItem(
          scheme: AppTheme.theme_purple,
          title: S.of(context).theme_purple,
          index: 3),
      ThemeItem(
          scheme: AppTheme.theme_blue,
          title: S.of(context).theme_blue,
          index: 4),
      ThemeItem(
          scheme: AppTheme.theme_blue2,
          title: S.of(context).theme_blue2,
          index: 5),
      ThemeItem(
          scheme: AppTheme.theme_blue_plus,
          title: S.of(context).theme_blue_plus,
          index: 6),
      ThemeItem(
          scheme: AppTheme.theme_brown,
          title: S.of(context).theme_brown,
          index: 7),
      ThemeItem(
          scheme: AppTheme.theme_red, title: S.of(context).theme_red, index: 8),
      ThemeItem(
          scheme: AppTheme.theme_grey,
          title: S.of(context).theme_grey,
          index: 9),
      ThemeItem(
          scheme: AppTheme.theme_happy_new_year,
          title: S.of(context).theme_happy_new_year,
          index: 10),
    ];
    return Obx(() => Column(children: [
          RadioListTile<int>(
            title: TextView(S.of(context).setting_basic_theme_follow_system),
            value: 0,
            groupValue: controller.themeMode.value,
            onChanged: (int? value) {
              controller.changeThemeMode(value!);
            },
          ),
          Divider(),
          RadioListTile<int>(
            title: TextView(S.of(context).setting_basic_theme_light),
            value: 1,
            groupValue: controller.themeMode.value,
            onChanged: (int? value) {
              controller.changeThemeMode(value!);
            },
          ),
          Divider(),
          RadioListTile<int>(
            title: TextView(S.of(context).setting_basic_theme_dark),
            value: 2,
            groupValue: controller.themeMode.value,
            onChanged: (int? value) {
              controller.changeThemeMode(value!);
            },
          ),
          DividerView(S.of(context).setting_basic_theme),
          Align(
              alignment: Alignment.center,
              child: Wrap(
                children: themeItems.map((item)=>ThemeButtonView(themeItem: item)).toList(),
              ))
        ]));
  }

  _buildLanView(BuildContext context, SettingBasicController controller) {
    return Wrap(
      children: [
        Obx(() => CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: controller.lang.value == 0,
            onChanged: (value) {
              controller.changeLanguage(0);
            },
            title: TextView(S.of(context).setting_basic_lang_system))),
        Obx(() => CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            value: controller.lang.value == 1,
            onChanged: (value) {
              controller.changeLanguage(1);
            },
            title: TextView("简体中文"))),
        Obx(() => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: controller.lang.value == 2,
              onChanged: (value) {
                controller.changeLanguage(2);
              },
              title: TextView("English"),
            )),
      ],
    );
  }

  _buildFontView(BuildContext context, SettingBasicController controller) {
    return Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 0),child: Row(
      children: [
        Text(S.of(context).setting_basic_font_size_80,style: TextStyle(
          fontSize: Constant.settingBasicFontSize80,
        ),),
        Obx(()=>Expanded(child: SfSlider(
          min: Constant.settingBasicFontSize80,
          max: Constant.settingBasicFontSize130,
          interval: 2,
          showDividers: true,
          showTicks: false,
          showLabels: false,
          enableTooltip: true,
          tooltipShape: SfPaddleTooltipShape(),
          value: controller.fontSize.value,
          onChanged: (dynamic newValue) async {
            await controller.setFontSize(newValue);
          },
        ))),
        Text(S.of(context).setting_basic_font_size_130,style: TextStyle(
          fontSize: Constant.settingBasicFontSize130,
        ),),
      ],
    ),
    );
  }

  _buildSourceView(BuildContext context,SettingBasicController controller,String title){
    return ListTile(title:TextView(title), trailing: Icon(Icons.chevron_right), onTap: (){
      Get.dialog(
        AlertDialog(
          title: Align(alignment:Alignment.center,child:TextView(S.of(context).user_api_title),),
          content: Container(
            child:  [].isEmpty ? Center(child: TextView(S.of(context).user_api_empty)):ListView(children:
            List.generate([].length, (i) {
              return _sourceWidget([][i]);
            })),
          ),
          actions: [
            TextButton(
              child: const TextView("Close"),
              onPressed: () => Get.back(),
            ),
            TextButton(
              child: const TextView("confirm"),
              onPressed: () => Get.back(),
            ),
          ],
        ),
      );
    },);
  }
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
                Text(info.name!),
                const SizedBox(width: 10,),
                Text(info.version!,style: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                ),),
                const SizedBox(width: 10,),
                Text(info.author!,style: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                )),
              ],
            ),
            const SizedBox(height: 5),
            Text(info.description!,style:TextStyle(
              color: Colors.grey.withOpacity(0.5),
            )),
            const SizedBox(height: 5,),
            Checkbox(value: info.allowShowUpdateAlert, onChanged: (value){

            })
          ],
        )),
        IconButton(icon: const Icon(Icons.close),onPressed: (){
        },),
      ],
    )
    );
  }

}