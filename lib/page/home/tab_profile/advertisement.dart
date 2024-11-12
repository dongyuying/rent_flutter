import 'package:flutter/material.dart';
import 'package:my_test_app/page/widgets/common_image.dart';

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
