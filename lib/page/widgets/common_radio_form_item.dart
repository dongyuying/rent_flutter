import 'package:flutter/material.dart';
import 'package:my_test_app/page/widgets/common_form_item.dart';

class CommonRadioFormItem extends StatelessWidget {
  final String label;
  final List<String> options;
  final int value;
  final ValueChanged<int?>? onChanged;

  const CommonRadioFormItem(
      {super.key,
      required this.label,
      required this.options,
      required this.value,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      ContentBuilder: (context) {
        return Container(
          height:40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                options.length,
                (index) => Row(
                      children: [
                        Radio(
                            activeColor: Colors.green,
                            value: index,
                            groupValue: value,
                            onChanged: onChanged),
                        Text(options[index])
                      ],
                    )),
          ),
        );
      },
    );
  }
}
