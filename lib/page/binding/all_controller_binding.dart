import 'package:get/get.dart';
import 'package:my_test_app/page/binding/controller/config_controller_binding.dart';
import 'package:my_test_app/page/binding/controller/user_controller_binding.dart';

class AllControllerBinding implements Bindings{
  /// 在widget中使用
  /// Obx(() => Text(Get.find<ConfigControllerBinding>().token))

  @override
  void dependencies() {
    Get.lazyPut<ConfigControllerBinding>(() => ConfigControllerBinding());
    Get.lazyPut<UserControllerBinding>(() => UserControllerBinding());
  }
  
}