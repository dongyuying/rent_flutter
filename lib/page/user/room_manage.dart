import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_test_app/page/home/tab_search/dataList.dart';
import 'package:my_test_app/page/widgets/common_floating_action_button.dart';
import 'package:my_test_app/page/widgets/room_list_item_widget.dart';
import 'package:my_test_app/page/widgets/search_bar/index.dart';

class RoomManagePage extends StatelessWidget {
  const RoomManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('房屋管理'),
          backgroundColor: Colors.green,
          foregroundColor:Colors.white,
          bottom: const TabBar(tabs: [
            Tab(text: '空置'),
            Tab(text: '已租')
          ]),
        ),
        body: TabBarView(children: [
          ListView(
            children: dataList.map((item) => RoomListItemWidget(item)).toList(),
          ),
          ListView(
            children: dataList.map((item) => RoomListItemWidget(item)).toList(),
          )
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatingActionButton('发布房源', (context) {
          Get.toNamed('/roomAdd');
        }),
      ),
    );
  }
}
