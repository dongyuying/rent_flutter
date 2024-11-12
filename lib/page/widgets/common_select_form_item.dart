import 'package:flutter/material.dart';
import 'package:my_test_app/page/utils/common_picker/index.dart';
import 'package:my_test_app/page/widgets/common_form_item.dart';

class CommonSelectFormItem extends StatelessWidget {
  final String label;
  final int value;
  final List<String> options;
  final Function(int) onChanged;

  const CommonSelectFormItem({super.key, required this.label, required this.value, required this.options, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(label: label,ContentBuilder: (context) {
      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          var result = CommonPicker.showPicker(context: context, options: options, value: value);

          result.then((selectedValue) {
            if (value != selectedValue && selectedValue != null && onChanged != null) {
              onChanged(selectedValue);
            }
          });
        },
        child: SizedBox(
          height:40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(options[value], style: const TextStyle(fontSize: 16)),
              const Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
      );
    },);
  }
}
