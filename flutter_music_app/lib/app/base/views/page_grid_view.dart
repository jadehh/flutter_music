/*
 * @File     : page_grid_view.dart
 * @Author   : jade
 * @Date     : 2024/12/17 9:44
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/app/base/controllers/base_controller.dart';
import 'package:flutter_music/app/base/views/status/app_empty_widget.dart';
import 'package:flutter_music/app/base/views/status/app_error_widget.dart';
import 'package:flutter_music/app/base/views/status/app_loading_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);

class PageGridView extends StatelessWidget {
  final BasePageController pageController;
  final IndexedWidgetBuilder itemBuilder;
  final EdgeInsets? padding;
  final bool firstRefresh;
  final bool showPageLoading;
  final double crossAxisSpacing, mainAxisSpacing;
  final int crossAxisCount;
  final bool showPCRefreshButton;
  const PageGridView({
    required this.itemBuilder,
    required this.pageController,
    this.padding,
    this.firstRefresh = false,
    this.showPageLoading = false,
    this.crossAxisSpacing = 0.0,
    this.mainAxisSpacing = 0.0,
    this.showPCRefreshButton = true,
    required this.crossAxisCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Stack(
        children: [
          EasyRefresh(
            header: MaterialHeader(
              processedDuration: const Duration(milliseconds: 400),
            ),
            footer: MaterialFooter(
              processedDuration: const Duration(milliseconds: 400),
            ),
            controller: pageController.easyRefreshController,
            onLoad: pageController.loadData,
            onRefresh: pageController.refreshData,
            refreshOnStart: firstRefresh,
            child: MasonryGridView.count(
              padding: padding,
              itemCount: pageController.list.length,
              itemBuilder: itemBuilder,
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: crossAxisSpacing,
              mainAxisSpacing: mainAxisSpacing,
            ),
          ),
          Offstage(
            offstage: !pageController.pageEmpty.value,
            child: AppEmptyWidget(
              onRefresh: () => pageController.refreshData(),
            ),
          ),
          // Offstage(
          //   offstage: !(showPageLoading && pageController.pageLoading.value),
          //   child: const AppLoadingWidget(),
          // ),
          Offstage(
            offstage: !pageController.pageError.value,
            child: AppErrorWidget(
              errorMsg: pageController.errorMsg.value,
              onRefresh: () => pageController.refreshData(),
            ),
          ),
        ],
      ),
    );
  }
}