import 'package:flutter/material.dart';
import 'package:my_test_app/page/home/index_navgator_item.dart';
import 'package:my_test_app/page/widgets/common_image.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: indexNavList
            .map((item) => InkWell(
                onTap: () => {item.onTap()},
                child: Column(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: CommonImage(item.imageUrl),
                    ), Text(item.title)],
                )))
            .toList(),
      ),
    );
  }
}
