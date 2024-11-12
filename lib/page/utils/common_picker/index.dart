import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommonPicker {
  static Future showPicker(
      {required BuildContext context,
      required List<String> options,
      required int value,
      double height = 300}) {
    return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) {
          var buttonTextStyle =
              const TextStyle(color: Colors.green, fontWeight: FontWeight.w600);

          var controller = FixedExtentScrollController(initialItem: value);
          return Container(
            color: Colors.white,
            height: height,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            '取消',
                            style: buttonTextStyle,
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(controller.selectedItem);
                          },
                          child: Text(
                            '确定',
                            style: buttonTextStyle,
                          )),
                    ],
                  ),
                ),
                Expanded(
                    child: CupertinoPicker(
                        scrollController: controller,
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        itemExtent: 32, // 高度
                        onSelectedItemChanged: (val) {},
                        children: options.map((item) => Text(item)).toList()))
              ],
            ),
          );
        });
  }
}
