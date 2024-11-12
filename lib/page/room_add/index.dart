import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_test_app/page/widgets/common_floating_action_button.dart';
import 'package:my_test_app/page/widgets/common_form_item.dart';
import 'package:my_test_app/page/widgets/common_image_picker.dart';
import 'package:my_test_app/page/widgets/common_radio_form_item.dart';
import 'package:my_test_app/page/widgets/common_select_form_item.dart';
import 'package:my_test_app/page/widgets/common_title.dart';
import 'package:my_test_app/page/widgets/room_appliance.dart';

class RoomAddPage extends StatefulWidget {
  const RoomAddPage({Key? key}) : super(key: key);

  @override
  _RoomAddPageState createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  int rentType = 0;
  int decorationType = 0;

  int roomType = 0;
  int floor = 0;
  int oriented = 0;

  var titleController = TextEditingController();
  var desController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('房源发布'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          const CommonTitle('房源信息'),
          CommonFormItem(
            label: '小区',
            ContentBuilder: (context) {
              return Expanded(
                  child: GestureDetector(
                      behavior: HitTestBehavior.translucent, // 空白处也可点击
                      onTap: () {
                        Get.toNamed('/search');
                      },
                      child: const SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('请选择小区'),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      )));
            },
          ),
          CommonFormItem(
            label: '租金',
            suffixText: '元/每月',
            hintText: '请输入租金',
            controller: TextEditingController(),
          ),
          CommonFormItem(
            label: '大小',
            suffixText: '平方米',
            hintText: '请输入房屋大小',
            controller: TextEditingController(),
          ),
          CommonRadioFormItem(
              label: '租赁方式',
              options: const ['整租', '合租'],
              value: rentType,
              onChanged: (index) {
                setState(() {
                  rentType = index!;
                });
              }),
          CommonSelectFormItem(
              label: '户型',
              value: roomType,
              options: const ['一室', '二室', '三室', '四室'],
              onChanged: (index) {
                setState(() {
                  roomType = index;
                });
              }),
          CommonSelectFormItem(
              label: '楼层',
              value: floor,
              options: const ['高楼层', '中楼层', '低楼层'],
              onChanged: (index) {
                setState(() {
                  floor = index;
                });
              }),
          CommonSelectFormItem(
              label: '朝向',
              value: oriented,
              options: const ['东', '南', '西', '北'],
              onChanged: (index) {
                setState(() {
                  oriented = index;
                });
              }),
          CommonRadioFormItem(
              label: '装修',
              options: const ['精装', '简装'],
              value: decorationType,
              onChanged: (index) {
                setState(() {
                  decorationType = index!;
                });
              }),
          const CommonTitle('房源图像'),
          CommonImagePicker(
            onChange: (List<File> files) {},
          ),
          const CommonTitle('房源标题'),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: titleController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '请输入房源标题',
              ),
            ),
          ),
          const CommonTitle('房源配置'),
          RoomAppliance(onChange: (list) {}),
          const CommonTitle('房源描述'),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: desController,
              maxLines: 10,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '请输入房源描述',
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton('提交', () {}),
    );
  }
}
