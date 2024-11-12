import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color color;
  final Color backgroundColor;

  const CommonTag.origin(this.title,
      {super.key,
      this.color = Colors.black,
      this.backgroundColor = Colors.grey});

  factory CommonTag(String title) {
    switch(title) {
      case '近地铁':
        return CommonTag.origin(title, color: Colors.red, backgroundColor: const Color.fromRGBO(255, 0, 0, 0.5),);
      case '交通便利':
        return CommonTag.origin(title, color: Colors.blue, backgroundColor: const Color.fromARGB(126, 197, 158, 179),);
      default:
        return CommonTag.origin(title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 3.0),
      padding:const EdgeInsets.fromLTRB(4, 2, 4, 2),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Text(title, style: TextStyle(color: color, fontSize: 10.0)),
    );
  }
}
