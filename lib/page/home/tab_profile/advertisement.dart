import 'package:flutter/material.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Colors.red),
    );
  }
}
