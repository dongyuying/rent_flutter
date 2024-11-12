import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:my_test_app/page/widgets/common_image.dart';


class CommonSwiper extends StatelessWidget {
  final List<String> images;

  CommonSwiper({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width / 750.0 * 424.0;
    return SizedBox(
      height: height,
      child: Swiper(
        // autoplay: true,
        itemBuilder: (context, index) {
          return CommonImage(
            images[index]
          );
        },
        itemCount: images.length,
        pagination: const SwiperPagination(builder: DotSwiperPaginationBuilder(activeColor: Colors.green)),
        // control: const SwiperControl(color: Colors.green),
      ),
    );
  }
}
