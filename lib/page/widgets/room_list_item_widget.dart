import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_test_app/page/home/tab_search/dataList.dart';
import 'package:my_test_app/page/widgets/common_image.dart';
import 'package:my_test_app/page/widgets/common_tag.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;

  const RoomListItemWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Get.toNamed('/roomDetail');
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Row(
          children: [
            SizedBox(
              width: 130,
              child: CommonImage(data.imageUrl),
            ),
            const Padding(padding: EdgeInsets.only(left: 10)),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(data.subTitle),
                Wrap(
                    children: data.tags.map((item) => CommonTag(item)).toList()),
                Text('${data.price}/每月', style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
