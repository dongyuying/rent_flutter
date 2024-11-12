import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/info/data.dart';
import 'package:my_test_app/page/widgets/common_image.dart';

class ItemWidget extends StatelessWidget {
  final InfoItem item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width:120,
            child: CommonImage(item.imageUrl),
          ),
          const Padding(padding: EdgeInsets.only(right: 10),),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(item.title,
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(item.source), Text(item.time)],
              )
            ],
          ))
        ],
      ),
    );
  }
}
