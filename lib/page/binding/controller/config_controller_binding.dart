import 'package:get/get.dart';
import 'package:my_test_app/page/utils/dio_http.dart';

class ConfigControllerBinding extends GetxController{
  // token
  RxString _token = ''.obs;

  // 获取图片地址
  getImageUrl () async {
    var res = await DioHttp().get('/random.php', {'return': 'json'});
    print('res: ${res}');
  }

  // token赋值
  setToken (String value) {
    _token.value = value;
    // 值更新后，要调用update方法，使用该值的都是更新
    update();
  }

  // token取值
  String getToken () {
    return _token.value;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}