import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  final String title;

  const CommonTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(left:10, right: 10),
      height: 50,
      alignment: Alignment.centerLeft,
      child: Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
    );
  }
}