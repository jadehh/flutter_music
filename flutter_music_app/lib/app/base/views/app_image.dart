/*
 * @File     : app_image.dart
 * @Author   : jade
 * @Date     : 2024/12/19 16:15
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppImage extends StatelessWidget{
  final String? url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final bool gaplessPlayback;
  const AppImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.gaplessPlayback = false,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  CachedNetworkImage(
      imageUrl: url!,
      imageBuilder: (context,imageProvider)=>Image(width:width,height:height,fit:fit,image: imageProvider,gaplessPlayback: gaplessPlayback,
      ),
    );
  }
}