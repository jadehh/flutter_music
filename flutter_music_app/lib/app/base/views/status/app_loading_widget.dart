import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:get/get.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: AppStyle.edgeInsetsA12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).cardColor,
          boxShadow: Get.isDarkMode
              ? []
              : [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey.withOpacity(.2),
                  )
                ],
        ),
        child: const CupertinoActivityIndicator(
          radius: 10,
        ),
      ),
    );
  }
}
