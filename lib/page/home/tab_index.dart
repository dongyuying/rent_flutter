import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_test_app/page/home/index_navigator.dart';
import 'package:my_test_app/page/home/index_recommond.dart';
import 'package:my_test_app/page/home/info/index.dart';
import 'package:my_test_app/page/widgets/common_swiper.dart';
import 'package:my_test_app/page/widgets/search_bar/index.dart';

List<String> defaultImages = [
  'https://via.placeholder.com/350x150',
  'https://via.placeholder.com/350x150',
  'https://via.placeholder.com/350x150'
];

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBarInfo(
          showLocation: true,
          showMap: true,
          onSearch: () {
            // Navigator.of(context).pushNamed('/roomAdd');

            Get.toNamed('/roomDetail?id=1');
          },
        ),
        // backgroundColor: Colors.green,
        // foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          // const AspectRatio(aspectRatio: 16/9)
          SizedBox(
            height: 200,
            child: CommonSwiper(images: defaultImages),
          ),
          const IndexNavigator(),
          IndexRecommond(),
          Info(showTitle: true)
        ],
      ),
    );
  }
}
