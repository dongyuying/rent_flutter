import 'package:get/get.dart';
import 'package:my_test_app/page/home.dart';
import 'package:my_test_app/page/about.dart';
import 'package:my_test_app/page/room_add/index.dart';
import 'package:my_test_app/page/room_detail/index.dart';
import 'package:my_test_app/page/user/login.dart';
import 'package:my_test_app/page/user/register.dart';
import 'package:my_test_app/page/user/room_manage.dart';
import 'package:my_test_app/page/user/settings.dart';

class Routes {
  static final Route = [
    GetPage(name: '/', page: () => const Home()),
    GetPage(name: '/about', page: () => const AboutPage()),
    GetPage(name: '/login', page: () => const LoginPage()),
    GetPage(name: '/register', page: () => const RegisterPage()),
    GetPage(name: '/setting', page: () => const SettingsPage()),
    GetPage(name: '/room', page: () => const RoomManagePage()),
    // 待解决
    GetPage(name: '/roomDetail', page: () => const RoomDetailPage( id: 0,)),
    GetPage(name: '/roomAdd', page: () => const RoomAddPage())
  ];
}