import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/info/data.dart';
import 'package:my_test_app/page/home/info/item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList =infoData;

  Info({super.key, this.showTitle = false});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Column(
        children: [
          if (showTitle ) Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 10),
            child: const Text('最新资讯', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          Column(
            children: dataList.map((item) => ItemWidget(item: item)).toList(),
          )
        ],
      ),
    );
  }
}