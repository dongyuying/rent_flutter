import 'package:flutter/material.dart';
import 'package:my_test_app/page/utils/common_toast.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('设置'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Container(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        child: const Text('退出登录'),
        onPressed: () {
          CommonToast.showToast('退出登录成功');
        },
      ),
    ));
  }
}
