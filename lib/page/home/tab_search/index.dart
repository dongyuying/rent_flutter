import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/tab_search/dataList.dart';
import 'package:my_test_app/page/widgets/room_list_item_widget.dart';
import 'package:my_test_app/page/widgets/search_bar/index.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({ Key? key }) : super(key: key);

  @override
  _TabSearchState createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchBarInfo(),
        // backgroundColor: Colors.green,
        // foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40.0,
            child: Text('filterBar'),
          ),
          Expanded(child: ListView(
            children: dataList.map((item) => RoomListItemWidget(item)).toList(),
          ))
        ],
      ),
    );
  }
}