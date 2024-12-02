/*
 * @File     : check_box_list_view.dart
 * @Author   : jade
 * @Date     : 2024/11/29 9:28
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_music/app/base/views/check_box_view.dart';


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
    // TODO: implement build
    return GridView.builder(
        itemCount: _checkBoxItems.length,
        padding: const EdgeInsets.only(left: 25),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: MediaQuery.of(context).size.width ~/180,),
        shrinkWrap: true,
        physics:const NeverScrollableScrollPhysics(), itemBuilder: (context,index)=>getCheckBoxView(index));
  }

  getCheckBoxView(index){
    return Align(child:  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(checked: _checkBoxItems[index].value, onChanged: (bool? value) {
          if (value!){
            _checkBoxItems[index].callBack(true);
            setState(() {
              for (var element in _checkBoxItems) {
                _checkBoxItems[_checkBoxItems.indexOf(element)].value =  false; // 修改每个元素的值
              }
              _checkBoxItems[index].value = true;
            });
          }
        },), const Padding(padding: EdgeInsets.only(left: 5)),
        Expanded(child: Text(_checkBoxItems[index].title)),
      ],),);
  }


}