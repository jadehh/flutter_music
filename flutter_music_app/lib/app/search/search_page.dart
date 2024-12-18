/*
 * @File     : search_page.dart
 * @Author   : jade
 * @Date     : 2024/12/13 17:30
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/app/base/views/text_view.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/app/search/controllers/search_page_controller.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:get/get.dart';


class SearchPage extends GetView<SearchPageController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Obx(()=>TextField(
          // controller: controller.searchController,
          autofocus: true,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Get.theme.primaryColor.withOpacity(0.7)
            ),
            hintText: controller.indexedController.apiService.hotWord.value.isEmpty ? S.of(context).search_hot_search:controller.indexedController.apiService.hotWord.value,
            border: OutlineInputBorder(
              borderRadius: AppStyle.radius24,
            ),
            contentPadding: AppStyle.edgeInsetsH12,
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: Get.back,
                  icon: const Icon(Icons.arrow_back),
                ),
              ],
            ),
            suffixIcon: IconButton(
              onPressed: ()=>Log.d("search"),
              icon: const Icon(Icons.search),
            ),
          ),
          onSubmitted: (e) {

          },
        )),
        bottom: TabBar(
          controller: controller.tabController,
          padding: EdgeInsets.zero,
          tabAlignment: TabAlignment.center,
          tabs: Constant.sites(context: context).map(
                (e) => Tab(
              //text: e.name,
              child: Row(
                children: [
                  Obx(()=>Visibility(child: Image.asset(
                    e.logo,
                    width: 24,
                  ),visible: controller.indexedController.settingService.sourceName.value == 0,)),
                  AppStyle.hGap8,
                  Obx(()=>TextView(
                    controller.indexedController.settingService.sourceName.value == 0 ? e.realName:e.aliasName
                  )),
                ],
              ),
            ),
          ).toList(),
          // labelPadding: AppStyle.edgeInsetsH20,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
    );
  }
}