import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/info/index.dart';
import 'package:my_test_app/page/widgets/search_bar/index.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({ Key? key }) : super(key: key);

  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchBarInfo(),
        // backgroundColor: Colors.green,
        // foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Info()
        ],
      ),
    );
  }
}