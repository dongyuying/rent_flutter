import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  final String label;
  final Widget Function(BuildContext context)? ContentBuilder;

  final Widget? suffix;
  final String? suffixText;

  final String? hintText;
  final ValueChanged? onChanged;
  final TextEditingController? controller;

  const CommonFormItem(
      {super.key,
      required this.label,
      this.ContentBuilder,
      this.suffix,
      this.suffixText,
      this.hintText,
      this.onChanged,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14, right: 14),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1, color: Color.fromARGB(255, 212, 210, 210)))),
      child: Row(
        children: [
          Container(
            width: 80.0,
            child: Text(label,
                style: const TextStyle(color: Colors.black, fontSize: 16)),
          ),
          Expanded(
              child: ContentBuilder != null
                  ? ContentBuilder!(context)
                  : TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                      ),
                    )),
          if (suffix != null) suffix!,
          if (suffix == null && suffixText != null)
            Text(
              suffixText!,
              style: const TextStyle(fontSize: 16),
            )
        ],
      ),
    );
  }
}
