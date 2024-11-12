import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('注册'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '请输入用户名'
              )
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: '确认密码',
                hintText: '请输入密码',
              ),
              obscureText: true,
            ),
const SizedBox(height: 20),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.green), foregroundColor: WidgetStatePropertyAll(Colors.white)),
              child: const Text('注册'),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('已有账号'),
                TextButton(
                  onPressed: (){
                    Get.offNamed('/login');
                  }, 
                  child: const Text('去登录~', style: TextStyle(color: Colors.green),)
                )
              ],
            )
          ],
        )
      ),
    );
  }
}