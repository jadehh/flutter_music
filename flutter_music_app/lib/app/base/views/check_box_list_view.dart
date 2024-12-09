/*
 * @File     : check_box_list_view.dart
 * @Author   : jade
 * @Date     : 2024/11/29 9:28
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/check_box_view.dart';
import 'package:flutter_music/app/base/views/text_view.dart';


class CheckBoxItem{
  final String title;
  final CheckCallBack callBack;
  bool value;
  CheckBoxItem({required this.title,required this.callBack,this.value=false});
}


class CheckBoxListView extends StatefulWidget{
  final List<CheckBoxItem> checkBoxItems;
  const CheckBoxListView({required this.checkBoxItems,super.key});

  @override
  State<StatefulWidget> createState() => _CheckBoxListView();

}

class _CheckBoxListView extends State<CheckBoxListView>{
  late List<CheckBoxItem> _checkBoxItems;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkBoxItems = widget.checkBoxItems;
  }

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerLeft,child: Padding(padding: const EdgeInsets.only(left: 25),child: Wrap(
      alignment: WrapAlignment.start,
      spacing: 5,
      children: List.generate(widget.checkBoxItems.length, (i) {
        return getCheckBoxView(i);
      }
      ),
    )));
  }

  getCheckBoxView(index){
    return SizedBox(
      // width: appTheme.fontSize*7,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(value: _checkBoxItems[index].value, onChanged:  (bool? value) {
            if (value!){
              _checkBoxItems[index].callBack(true);
              setState(() {
                for (var element in _checkBoxItems) {
                  _checkBoxItems[_checkBoxItems.indexOf(element)].value =  false; // 修改每个元素的值
                }
                _checkBoxItems[index].value = true;
              });
            }
          },),
          const Padding(padding: EdgeInsets.only(left: 5)),
          Expanded(child:  TextView(widget.checkBoxItems[index].title,ellipsis: false)),
        ],),
    );
  }
}