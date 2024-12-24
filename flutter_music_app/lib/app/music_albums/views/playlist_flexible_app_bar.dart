import 'dart:ui';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/app/base/views/app_image.dart';
import 'package:flutter_music/common/buttons.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:flutter_music_core/main.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';



class PlaylistFlexibleAppBar extends StatelessWidget {
  final MusicAlbum album;
  final Rx<MusicAlbumDetail> albumDetail;
  const PlaylistFlexibleAppBar({
    required this.album,
    required this.albumDetail,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final settings = context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>()!;
    final deltaExtent = settings.maxExtent - settings.minExtent;
    // 0.0 -> Expanded
    // 1.0 -> Collapsed to toolbar
    final t = (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent).clamp(0.0, 1.0);
    final children = <Widget>[];
    // need add a padding to avoid overlap the bottom widget.
    var bottomPadding = 0.0;
    final sliverBar = context.findAncestorWidgetOfExactType<SliverAppBar>();
    if (sliverBar != null && sliverBar.bottom != null) {
      bottomPadding = sliverBar.bottom!.preferredSize.height;
    }

    // add  background.
    children.add(
      Positioned(
        top: -Tween<double>(begin: 0, end: deltaExtent / 4.0).transform(t),
        left: 0,
        right: 0,
        bottom: 0,
        child: _Background(
          imageUrl: album.img,
          current: settings.currentExtent - settings.minExtent,
        ),
      ),
    );

    // add playlist information.
    children.add(
      Positioned(
        top: settings.currentExtent - settings.maxExtent,
        left: 0,
        right: 0,
        height: settings.maxExtent,
        child: Opacity(
          opacity: 1 - t,
          child: Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: SafeArea(child: _PlayListHeaderContent(album: album,albumDetail: albumDetail,)),
          ),
        ),
      ),
    );

    // add appbar.
    children.add(
      Column(
        children: [_AppBar(t: t,title: albumDetail.value.info.title,)],
      ),
    );

    // add overlapped buttons.
    children.add(
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        child: _OverlappedActionButtons(
          currentExtent: settings.currentExtent - settings.minExtent,
          extent: deltaExtent,
          children: [
            _OverlappedButton(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
              icon: const Icon(FluentIcons.collections_add_20_regular),
              label: Obx(()=>Text(albumDetail.value.info.collectNum.toString())),
              onPressed: () {

              },
            ),
            _OverlappedButton(
              icon: const Icon(FluentIcons.comment_20_regular),
              label: Obx(()=>Text(albumDetail.value.info.commentNum.toString())),
              onPressed: () {
              },
            ),
            _OverlappedButton(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              icon: const Icon(FluentIcons.share_20_regular),
              label: Obx(()=>Text(albumDetail.value.info.shareNum.toString())),
              onPressed: () {
                SmartDialog.showToast("暂不支持分享");
              },
            ),
          ],
        ),
      ),
    );

    return ClipRect(
      child: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding),
        child: Stack(
          fit: StackFit.expand,
          children: children,
        ),
      ),
    );
  }
}

class _OverlappedActionButtons extends StatelessWidget {
  const _OverlappedActionButtons({
    required this.currentExtent,
    required this.extent,
    required this.children,
  });

  final double currentExtent;

  final double extent;

  final List<_OverlappedButton> children;

  @override
  Widget build(BuildContext context) {
    const extentLimit = 66;

    const snapExtentArea = [30, extentLimit];

    var t = ((currentExtent - snapExtentArea[0]) /
            (snapExtentArea[1] - snapExtentArea[0]))
        .clamp(0.0, 1.0);
    t = Curves.easeInOut.transform(t);

    return Column(
      children: [
        const Spacer(),
        Transform.translate(
          offset: Offset(
            0,
            currentExtent < extentLimit ? (extentLimit - currentExtent) / 2 : 0,
          ),
          child: Opacity(
            opacity: t,
            child: Transform.scale(
              scale: t / 2 + 0.5,
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(24),
                child: SizedBox(
                  height: 42,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: children.cast<Widget>().separated(
                          Container(
                            width: 1,
                            height: 24,
                            color: context.theme.dividerColor,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _AppBar extends StatelessWidget {
  final double t;
  final String title;
  const _AppBar({
    required this.t,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: AppBackButton(color: context.theme.colorScheme.surface),
      automaticallyImplyLeading: false,
      title: Text(t > 0.5 ? title : S.of(context).nav_songlist),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 0,
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    required this.imageUrl,
    required this.current,
  });

  final String imageUrl;

  final double current;

  @override
  Widget build(BuildContext context) {
    // only animate to remove the bottom clip when current extent smaller than 66.
    final t = current > 66 ? 1.0 : current / 66;
    return ClipPath(
      clipper: _BackgroundClipper(
        height: 14 * t,
        bottom: 20 * t,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          AppImage(url: imageUrl ),
          RepaintBoundary(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
              child: ColoredBox(color: Colors.black.withOpacity(0.3)),
            ),
          ),
          ColoredBox(color: Colors.black.withOpacity(0.3)),
        ],
      ),
    );
  }
}


class _PlayListHeaderContent extends StatelessWidget {
  final MusicAlbum album;
  final Rx<MusicAlbumDetail> albumDetail;
  const _PlayListHeaderContent({required this.album,required this.albumDetail});
  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 120,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppStyle.hGap16,
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AppImage(
                    width: 120,
                    height: 120,
                    url: album.img,
                  ),
                ),
                AppStyle.hGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        album.name,
                        style: context.theme.textTheme.titleLarge,
                        maxLines: 2,
                      ),
                      Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.play_arrow,color: Colors.white,size: 12,),
                          AppStyle.hGap4,
                          Expanded(child: Obx(()=>Text(
                            albumDetail.value.info.playNum,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.theme.textTheme.titleSmall,
                          ))),
                        ],
                      ),
                      Spacer(),
                      Obx(()=>Text(
                        albumDetail.value.info.author,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.theme.textTheme.titleSmall,
                      )),
                    ],
                  ),
                ),
                AppStyle.hGap16,
              ],
            ),
          ),
          Row(
            children: [
              AppStyle.hGap16,
              Expanded(child: Obx(()=>Text(albumDetail.value.info.desc,maxLines: 1,style: context.textTheme.labelMedium?.copyWith(color: Colors.grey),)),),
              IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right,color: Colors.white)),
              AppStyle.hGap16,
            ],
          ),
        ],
      );
}

class _BackgroundClipper extends CustomClipper<Path> {
  _BackgroundClipper({
    required this.bottom,
    required this.height,
  });

  final double height;
  final double bottom;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - bottom - height);
    path.quadraticBezierTo(
      size.width / 2,
      size.height - bottom,
      size.width,
      size.height - bottom - height,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(_BackgroundClipper oldClipper) {
    return bottom != oldClipper.bottom || height != oldClipper.height;
  }
}

class _OverlappedButton extends StatelessWidget {
  const _OverlappedButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    this.borderRadius,
  });

  final Widget icon;
  final Widget label;

  final VoidCallback onPressed;

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      customBorder: borderRadius == null
          ? null
          : RoundedRectangleBorder(
              borderRadius: borderRadius!,
            ),
      child: SizedBox(
        width: 100,
        height: 42,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconTheme.merge(
              data: IconThemeData(
                size: 18,
                color: context.theme.textTheme.bodySmall!.color,
              ),
              child: icon,
            ),
            const SizedBox(width: 8),
            DefaultTextStyle(
              style: context.theme.textTheme.bodySmall!,
              child: label,
            ),
          ],
        ),
      ),
    );
  }
}
