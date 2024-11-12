import 'package:get/get.dart';

class IndexNavgatorItem {
  final String title;
  final String imageUrl;
  final Function onTap;

  IndexNavgatorItem(this.title, this.imageUrl, this.onTap);
}

List<IndexNavgatorItem> indexNavList = [
  IndexNavgatorItem('整租', 'static/images/dingdanB.png', () {Get.toNamed('/');}),
  IndexNavgatorItem('整租', 'static/images/dingdanB.png', () {Get.toNamed('/');}),
  IndexNavgatorItem('整租1', 'static/images/shouyeB.png', () {Get.toNamed('/');}),
  IndexNavgatorItem('整租', 'static/images/dingdanB.png', () {Get.toNamed('/');}),
];