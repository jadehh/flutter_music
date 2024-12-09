/*
 * @File     : check_box_view.dart
 * @Author   : jade
 * @Date     : 2024/11/28 10:36
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/text_view.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';

typedef CheckCallBack = void Function(bool value);

class CheckBoxView extends StatefulWidget {
  final bool value;
  final String text;
  final String? tips;
  final CheckCallBack callback;

  const CheckBoxView(
      {required this.value,
      required this.text,
      required this.callback,
      this.tips,
      super.key});

  @override
  State<StatefulWidget> createState() => _CheckBoxView();
}

class _CheckBoxView extends State<CheckBoxView> {
  late CheckCallBack _callback;
  late bool? _value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = widget.value;
    _callback = widget.callback;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          const Padding(padding: EdgeInsets.only(left: 25)),
          Checkbox(
              value: _value,
              onChanged: (bool? value) {
                _callback(value!);
                setState(() {
                  _value = value;
                });
              }),
          const Padding(padding: EdgeInsets.only(left: 5)),
          Expanded(child: TextView(widget.text)),
          widget.tips != null
              ? IconButton(
                  icon: const Icon(
                    Icons.add_circle,
                    size: 12,
                  ),
                  onPressed: () async => (await showOkAlertDialog(
                        context: context,
                        message: widget.tips,
                        okLabel: S.of(context).understand,
                      )))
              : const SizedBox()
        ],
      ),
    );
  }
}
