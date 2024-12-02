/*
 * @File     : setting_page.dart
 * @Author   : jade
 * @Date     : 2024/11/27 16:48
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_music/app/base/views/text_view.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/app/home/home_page.dart';
import 'package:flutter_music/app/setting/views/setting_basic_view.dart';
import 'package:flutter_music/app/setting/views/setting_lyric_view.dart';
import 'package:flutter_music/app/setting/views/setting_player_view.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingPage extends StatefulWidget{
  final int settingNavIndex;
  const SettingPage({required this.settingNavIndex,super.key});

  @override
  State<StatefulWidget> createState() => _SettingPage();
}
class _SettingPage  extends State<SettingPage>{

  // TODO: implement build
  final List<Widget> pages = [
    const SettingBasicView(),
    const SettingPlayerView(),
    const SettingLyricView(),
  ];
  late int _settingNavIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _settingNavIndex = widget.settingNavIndex;
  }

  @override
  Widget build(BuildContext context) {
    final List<NavIconItem> navItems = Constant.settingItems(context).keys.map((key) => Constant.settingItems(context)[key]!).toList();
    return OrientationBuilder(builder: (context, orientation)
    {
      if (orientation == Orientation.portrait) {
        return getMobile(navItems);
      }else{
        return getDesktopView(navItems);
      }
    });
  }

  getDesktopView(List<NavIconItem> navItems){
    return NavigationView(
      appBar: getAppBar(context),
      pane: NavigationPane(
          menuButton: const SizedBox(),
          toggleable:false,
          displayMode: PaneDisplayMode.open,
          items: navItems.map((item)=>getNavText(context,item.title, navItems.indexOf(item)) as NavigationPaneItem).toList(),
          selected: _settingNavIndex,
          indicator: null,
          size: NavigationPaneSize(openWidth: 100.w),
          onChanged:(index){
            setState(() {
              _settingNavIndex = index;
            });
          }),
    );
  }

  getMobile(navItems){
    return pages[0];
  }


  getNavText(context,text,index){
    return PaneItem(icon: index  == _settingNavIndex ? Row(children: [Icon(FluentIcons.chevron_right,color:FluentTheme.of(context).accentColor,), Padding(padding: const EdgeInsets.only(left: 5),child: Text(text),)]): Text(text), body: pages[index]);
  }
  
  static getAppBar(context){
    return NavigationAppBar(
        automaticallyImplyLeading: false,
        title: Text(S.of(context).nav_setting)
    );
  }

}