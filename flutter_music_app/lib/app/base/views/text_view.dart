/*
 * @File     : text_view.dart
 * @Author   : jade
 * @Date     : 2024/11/29 13:22
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/cupertino.dart';

class TextView extends StatelessWidget{
  final String? data;
  final bool? ellipsis;
  const TextView(this.data,{this.ellipsis=false,super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ellipsis == true ? Text(data!, maxLines: 1, softWrap: false, overflow: TextOverflow.ellipsis):Text(data!
    ));
  }
}