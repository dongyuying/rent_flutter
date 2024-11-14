import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_test_app/page/binding/controller/config_controller_binding.dart';
import 'package:my_test_app/page/home/tab_index.dart';
import 'package:my_test_app/page/home/tab_info/index.dart';
import 'package:my_test_app/page/home/tab_profile/index.dart';
import 'package:my_test_app/page/home/tab_search/index.dart';

List<Widget> tabViewList = [
  const TabIndex(),
  const TabSearch(),
  const TabInfo(),
  const TabProfile(),
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  ConfigControllerBinding _configControllerBinding = Get.find<ConfigControllerBinding>();

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    _configControllerBinding.getImageUrl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabViewList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '搜索'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: '资讯'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '我的'),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        // showUnselectedLabels: true
      ),
    );
  }
}
