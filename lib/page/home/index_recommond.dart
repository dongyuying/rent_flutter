import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/index_recommend_item.dart';
import 'package:my_test_app/page/widgets/common_image.dart';

class IndexRecommond extends StatelessWidget {
  final List<IndexRecommendItem> remList = indexRecoList;

  IndexRecommond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(color: Color(0x08000000)),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '房屋推荐',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '更多',
                style: TextStyle(color: Colors.black38),
              )
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: remList
                  .map((item) => Container(
                        decoration: const BoxDecoration(color: Colors.white),
                        width: (MediaQuery.of(context).size.width - 10 * 3) / 2,
                        padding: const EdgeInsets.all(10),
                        child: GestureDetector(
                          // 有点击事件
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(item.title),
                                  Text(item.subtitle)
                                ],
                              ),
                              SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: CommonImage(item.imageUrl))
                            ],
                          ),
                        ),
                      ))
                  .toList())
        ],
      ),
    );
  }
}
