/*
 * @File     : music_albums_page.dart
 * @Author   : jade
 * @Date     : 2024/12/13 9:43
 * @Email    : jadehh@1ive.com
 * @Software : Samples
 * @Desc     :
 */
import 'package:flutter/material.dart';
import 'package:flutter_music/app/app_style.dart';
import 'package:flutter_music/app/base/views/app_scaffold.dart';
import 'package:flutter_music/app/constant.dart';
import 'package:flutter_music/app/indexed/controllers/indexed_controller.dart';
import 'package:flutter_music/app/music_albums/controllers/music_albums_page_controller.dart';
import 'package:flutter_music/app/music_albums/views/drawer_view.dart';
import 'package:flutter_music/app/music_albums/views/music_albums_view.dart';
import 'package:flutter_music/app/routes/route_path.dart';
import 'package:flutter_music/generated/l10n.dart';
import 'package:get/get.dart';
class MusicAlbumsPage extends StatelessWidget{
  static final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final controller = Get.find<IndexedController>();
  @override
  Widget build(BuildContext context) {
    /**
     * GestureDetector(
        // onPanUpdate: (details) {
        //   Log.d("details.localPosition.dx:${details.localPosition.dx},details.localPosition.dy:${details.localPosition.dx}");
        //   if (details.delta.dx > 0 && details.localPosition.dx < 100 && details.localPosition.dy >100 ) {
        //     _scaffoldKey.currentState?.openDrawer();
        //   }
        //   if (details.delta.dx < 0) {
        //     _scaffoldKey.currentState?.closeDrawer();
        //   }
        // },child:Null),
     * **/

    return AppScaffold(
            scaffoldKey: _scaffoldKey,
            appBar: _appBar(context,_scaffoldKey,controller),
            body:  Column(
              children: [
                TabBar(
                  controller: controller.tabController,
                  padding: EdgeInsets.zero,
                  tabAlignment: TabAlignment.center,
                  tabs: Constant.sites(context: context).map(
                          (e){
                        if(e.key != "source_all"){
                          // 初始化TabController
                          Get.put(MusicAlbumsPageController(api:e.api),tag: e.api.key);
                          return Tab(
                            //text: e.name,
                            child: Row(
                              children: [
                                Obx(()=>Visibility(child: Image.asset(
                                  e.logo,
                                  width: 24,
                                ),visible: controller.settingService.sourceName.value == 0,)),
                                AppStyle.hGap8,
                                Obx(()=>Text( controller.settingService.sourceName.value == 0 ? e.realName!:e.aliasName!
                                )),
                              ],
                            ),
                          );
                        }else{
                          return SizedBox.shrink();
                        }
                      }
                  ).toList(),
                  // labelPadding: AppStyle.edgeInsetsH20,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                ),
                Expanded(child: TabBarView(children:Constant.sites(context: context).map(
                        (e){
                      if(e.key != "source_all"){
                        // 初始化TabController
                        return MusicAlbumsView(sourceBaseApi: e.api);
                      }else{
                      return SizedBox.shrink();
                      }
                    }
                ).toList(),controller: controller.tabController))
              ],
            ),
            drawer: DrawerView()
        );
    // TODO: implement build
  }
  static PreferredSize _appBar(BuildContext context,GlobalKey<ScaffoldState> scaffoldKey,IndexedController controller){
    return PreferredSize(
      preferredSize: Size(0, 100),
      child: Container(
        height: 50,
        color: Theme.of(context).primaryColor.withOpacity(0.3),
        child: Row(
            children:  [
              IconButton(onPressed: () => scaffoldKey.currentState?.openDrawer(), icon: Icon(Icons.menu)),
              SizedBox(width: 10),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Colors.black12
                  ),
                  borderRadius:BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor.withOpacity(0.07),
                ),
                child: Row(
                  children: [
                    Expanded(child: SizedBox(height: 40,child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      child: Row(
                      children: [
                        // DropdownButton<int>(
                        //     underline: const SizedBox(),
                        //     items: Constant.getMusicSourceItemList(context, false).map((item) => DropdownMenuItem(
                        //       value: item.index,
                        //       child: Text(item.name),
                        //     )).toList(),
                        //     value: 0,
                        //     onChanged: (e) {
                        //     },
                        //   ),
                        SizedBox(width: 10),
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Expanded(child: Obx(()=>Text(controller.apiService.hotWord.value.isEmpty ? S.of(context).search_hot_search:controller.apiService.hotWord.value,style: TextStyle(
                            color: Theme.of(context).primaryColor.withOpacity(0.7)
                        ),))),
                      ],
                    ),onTap: (){
                        Get.toNamed(RoutePath.kSearch);
                    },),)),
                    IconButton(onPressed: (){},icon: Icon(Icons.qr_code_scanner_sharp)),
                    SizedBox(width: 10),
                  ],
                ),
              ),),
              SizedBox(width: 10),
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            ]
        ),
      ),
    );
  }
}