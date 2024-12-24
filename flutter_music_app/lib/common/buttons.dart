/*
 * @File     : buttons.dart
 * @Author   : jade
 * @Date     : 2024/12/20 13:59
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AppIconButton extends StatelessWidget {
  AppIconButton({
    super.key,
    required IconData icon,
    this.size = 24,
    this.onPressed,
    this.enable = true,
    this.color,
    this.disabledColor,
    this.tooltip,
    this.padding = const EdgeInsets.all(8),
  }) : icon = Icon(icon);

  const AppIconButton.widget({
    super.key,
    required this.icon,
    this.size = 24,
    this.onPressed,
    this.enable = true,
    this.color,
    this.disabledColor,
    this.tooltip,
    this.padding = const EdgeInsets.all(8),
  });

  final Widget icon;
  final double size;
  final VoidCallback? onPressed;
  final bool enable;
  final Color? color;
  final Color? disabledColor;

  final String? tooltip;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) => IconButton(
    onPressed: enable ? (onPressed ?? () {}) : null,
    icon: icon,
    iconSize: size,
    color: color ?? IconTheme.of(context).color,
    disabledColor: disabledColor,
    splashRadius: size,
    tooltip: tooltip,
    mouseCursor:
    enable ? SystemMouseCursors.click : SystemMouseCursors.basic,
    padding: padding,
  );
}

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    this.size = 24,
    this.color,
  });

  final double size;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final IconData icon;
    if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      icon = FluentIcons.ios_arrow_ltr_24_regular;
    } else {
      icon = FluentIcons.arrow_left_24_regular;
    }
    return AppIconButton(
      icon: icon,
      size: size,
      color: color,
      onPressed: () {
        Get.back();
      },
    );
  }
}
