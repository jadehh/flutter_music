/*
 * @File     : back_ground_view.dart
 * @Author   : jade
 * @Date     : 2024/12/19 10:31
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/views/app_image.dart';

class BlurBackground extends StatelessWidget {
  const BlurBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        AppImage(url: "https://img1.kuwo.cn/star/userpl2015/46/73/1639391305931_560877346_500.jpg",height: 15,width: 15,gaplessPlayback: true,fit: BoxFit.fill),
        BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaY: 14, sigmaX: 24),
          child: const DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black54,
                  Colors.black26,
                  Colors.black45,
                  Colors.black87,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
