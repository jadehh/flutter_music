/*
 * @File     : window_buttons.dart
 * @Author   : jade
 * @Date     : 2024/11/22 16:19
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */

import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138,
      height: 50,
      child: WindowCaption(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
