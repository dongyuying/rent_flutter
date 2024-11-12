import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_test_app/page/home/info/index.dart';
import 'package:my_test_app/page/home/tab_profile/advertisement.dart';
import 'package:my_test_app/page/home/tab_profile/function_button.dart';
import 'package:my_test_app/page/home/tab_profile/header.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  // Widget _notLogin(BuildContext context) {
  //   return Container();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/room');
              },
              icon: const Icon(Icons.settings, color: Colors.white, size: 18.0))
        ],
      ),
      body: ListView(
        children: [
          const TabProfileHeader(), 
          const FunctionButton(),
          const Advertisement(),
          Info(showTitle: true)
        ],
      ),
    );
  }
}
