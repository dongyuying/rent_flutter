import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/tab_profile/function_button_data.dart';
import 'package:my_test_app/page/home/tab_profile/function_button_widget.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 1,
        runSpacing: 1,
        children: dataList.map((item) => Container(
          width: MediaQuery.of(context).size.width * 0.33,
          child: FunctionButtonWidget(item),
        )).toList(),
      ),
    );
  }
}
