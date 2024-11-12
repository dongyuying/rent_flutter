import 'package:flutter/material.dart';

var loginRegisterStyle = const TextStyle(fontSize: 20.0, color: Colors.white);

class TabProfileHeader extends StatelessWidget {
  const TabProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95.0,
      decoration: const BoxDecoration(color: Colors.green),
      child: Row(
        children: [
          Container(
            width: 65.0,
            height: 65.0,
            margin: const EdgeInsets.only(left: 20, right: 10.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg'),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text('登录', style: loginRegisterStyle),
                  ),
                  Text('/', style: loginRegisterStyle),
                  GestureDetector(
                    onTap: () {},
                    child: Text('注册', style: loginRegisterStyle),
                  ),
                ],
              ),
              const Text('登录后可以体验更多', style: TextStyle(color: Colors.white)),
            ],
          ))
        ],
      ),
    );
  }
}
