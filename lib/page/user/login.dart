import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('当前页面：登录'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: ListView(
        children: [
          const TextField(
            decoration: InputDecoration(labelText: '用户名1', hintText: '请输入用户名1'),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(showPassword
                        ? Icons.visibility_off
                        : Icons.visibility))),
            obscureText: !showPassword, // 密码格式
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.green), foregroundColor: WidgetStatePropertyAll(Colors.white)),
            child: const Text('登录'),
            onPressed: () {
              // todo
            },
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('去注册'),
              TextButton(
                  onPressed: () {
                    Get.offNamed('/register');
                  },
                  child: const Text('去注册~', style: TextStyle(color: Colors.green),))
            ],
          )
        ],
      ),
    )
  ); 
  }
}
