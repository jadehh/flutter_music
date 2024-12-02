/*
 * @File     : theme_button_view.dart
 * @Author   : jade
 * @Date     : 2024/11/28 13:50
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_music/app/theme.dart';

class ThemeButtonView extends StatefulWidget{
  final AccentColor color;
  final String title;
  final AppTheme appTheme;
  const ThemeButtonView({required this.color,required this.title,required this.appTheme,super.key});
  @override
  State<StatefulWidget> createState() => _ThemeButtonView();
}

class _ThemeButtonView extends State<ThemeButtonView> {
  late AppTheme _appTheme;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _appTheme = widget.appTheme;

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      child: IconButton(icon: Column(
        children: [
          Center(child: Container(
            width: 60,
            height: 60,
            decoration: widget.color == _appTheme.color ? BoxDecoration(
                border: Border.all(
                  color: widget.color , // 设置边框颜色为蓝色
                  width: 1, // 设置边框宽度为2
                )
            ) : null,
            alignment: Alignment.center,
            // where to position the child
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: widget.color,
              ),
            ),
          ),),
          Text(widget.title, style: TextStyle(color: widget.color),),
        ],
      ), onPressed: () {
        setState(() {
          _appTheme.color = widget.color;
        });
      }),
    );
  }
}