/*
 * @File     : text_view.dart
 * @Author   : jade
 * @Date     : 2024/11/29 13:22
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:fluent_ui/fluent_ui.dart';

class TextView extends StatelessWidget{
  final TextStyle? style;
  final String? data;
  final double? width;
  const TextView(this.data,{this.width,this.style,super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.red,
      child: Text(
      data!,
      maxLines: 1,
      softWrap: false,
      overflow: TextOverflow.ellipsis,
      style: style,
    ));
  }
}