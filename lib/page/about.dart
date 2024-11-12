import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('关于我们'),
      ),
      body: const Column(
        children: [
          Text('关于我们'),
          Text('联系我们')
        ],
      ),
    );
  }
}