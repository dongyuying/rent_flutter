import 'package:flutter/material.dart';
import 'package:my_test_app/page/widgets/common_check_button.dart';

class RoomApplianceItem {
  final String title;
  final String iconPoint;
  bool isChecked;

  RoomApplianceItem(this.title, this.iconPoint, this.isChecked);
}

List<RoomApplianceItem> _dataList = [
  RoomApplianceItem('洗衣机', "101cd", false),
  RoomApplianceItem('衣柜', "101cd", false),
  RoomApplianceItem('热水器', "101cd", false),
  RoomApplianceItem('WiFi', "101cd", false),
  RoomApplianceItem('空调', "101cd", false),
  RoomApplianceItem('天然气', "101cd", false),
  RoomApplianceItem('冰箱', "101cd", false),
  RoomApplianceItem('暖气', "101cd", false),
  RoomApplianceItem('电视', "101cd", false),
  RoomApplianceItem('沙发', "101cd", false),
];


class RoomAppliance extends StatefulWidget {
  final ValueChanged<List<RoomApplianceItem>> onChange;

  const RoomAppliance({super.key, required this.onChange});

  @override
  _RoomApplianceState createState() => _RoomApplianceState();
}

class _RoomApplianceState extends State<RoomAppliance> {
  List<RoomApplianceItem> list = _dataList;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 5;
    return Container(
      child: Wrap(
        runSpacing: 10,
        children: list.map((item) => GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            setState(() {
              // 使用情况是，isChecked 定义为final，无法直接修改isChecked
              // list = list.map((i) => item == i ? RoomApplianceItem(item.title, item.iconPoint, !item.isChecked) : i).toList();
              item.isChecked = !item.isChecked;
            });
            if (widget.onChange != null) {
              widget.onChange(list);
            }
          },
          child: Container(
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(IconData(item.iconPoint, fontFamily: Config.CommonIcon), size:40), // 自定义字体的使用
                const Icon(Icons.account_balance_wallet_outlined, size: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(item.title),
                ),
                CommonCheckButton(item.isChecked)
              ],
            ),
          ),
        )).toList(),
      ),
    );
  }
}

class RoomApplianceList extends StatelessWidget {
  final List<String> list;

  const RoomApplianceList({super.key, required this.list});

  @override
  Widget build(BuildContext context){
    var width = MediaQuery.of(context).size.width / 5;

    var _list = _dataList.where((item) => list.contains(item.title)).toList();
    return Container(
      child: Wrap(
        runSpacing: 10,
        children: _list.map((item) => Container(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(IconData(item.iconPoint, fontFamily: Config.CommonIcon), size:40), // 自定义字体的使用
              const Icon(Icons.account_balance_wallet_outlined, size: 40),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(item.title),
              )
            ],
          ),
        )).toList(),
      ),
    );
  }
}