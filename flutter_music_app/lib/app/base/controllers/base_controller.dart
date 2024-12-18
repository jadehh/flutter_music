/*
 * @File     : base_controller.dart
 * @Author   : jade
 * @Date     : 2024/12/17 9:10
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_log/flutter_log.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
class BaseController extends GetxController {
  /// 加载中，更新页面
  var pageLoading = false.obs;

  /// 加载中,不会更新页面
  var loading = false;

  /// 空白页面
  var pageEmpty = false.obs;

  /// 页面错误
  var pageError = false.obs;


  /// 错误信息
  var errorMsg = "".obs;


  /// 显示错误
  /// * [msg] 错误信息
  /// * [showPageError] 显示页面错误
  /// * 只在第一页加载错误时showPageError=true，后续页加载错误时使用Toast弹出通知
  void handleError(Object exception, {bool showPageError = false}) {
    Log.e(exception.toString(), StackTrace.current);
    var msg = exceptionToString(exception);

    if (showPageError) {
      pageError.value = true;
      errorMsg.value = msg;
    } else {
      SmartDialog.showToast(exceptionToString(msg));
    }
  }

  String exceptionToString(Object exception) {
    return exception.toString().replaceAll("Exception:", "");
  }

  void onLogin() {}
  void onLogout() {}
}

class BasePageController<T> extends BaseController {
  final ScrollController scrollController = ScrollController();
  final EasyRefreshController easyRefreshController = EasyRefreshController();
  int currentTabPage = 0;
  int currentPage = 1;
  int count = 0;
  int maxPage = 0;
  int pageSize = 24;
  var canLoadMore = false.obs;

  var list = <T>[].obs;

  Future refreshData() async {
    currentPage = 1;
    list.value = [];
    await loadData();
  }

  Future loadData() async {
    try {
      if (loading) return;
      loading = true;
      pageError.value = false;
      pageEmpty.value = false;
      pageLoading.value = currentPage == 1;

      var result = await getData(currentPage, pageSize);
      //是否可以加载更多
      if (result.isNotEmpty) {
        currentPage++;
        canLoadMore.value = true;
        pageEmpty.value = false;
      } else {
        canLoadMore.value = false;
        if (currentPage == 1) {
          pageEmpty.value = true;
        }
      }
      // 赋值数据
      if (currentPage == 1) {
        list.value = result;
      } else {
        list.addAll(result);
      }
    } catch (e) {
      handleError(e, showPageError: currentPage == 1);
    } finally {
      loading = false;
      pageLoading.value = false;
    }
  }

  Future<List<T>> getData(int page, int pageSize) async {
    return [];
  }

  void scrollToTopOrRefresh() {
    if (scrollController.offset > 0) {
      scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      );
    } else {
      easyRefreshController.callRefresh();
    }
  }
}