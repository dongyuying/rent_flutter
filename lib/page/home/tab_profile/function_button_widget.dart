import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/tab_profile/function_button_data.dart';
import 'package:my_test_app/page/widgets/common_image.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonData item;

  const FunctionButtonWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          SizedBox(
            width: 65,
            child: CommonImage(item.imageUrl),
          ),
          Text(item.title)
        ],
      ),
    );
  }
}
