import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_test_app/page/404_page.dart';
import 'package:my_test_app/page/binding/all_controller_binding.dart';

import 'package:my_test_app/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        // useMaterial3: true
      ),
      unknownRoute: GetPage(name: '/not_found', page: () => const NotFoundPage()),
      initialRoute: '/',
      defaultTransition: Transition.rightToLeft,
      getPages: Routes.Route,
      initialBinding: AllControllerBinding(),
    );
  }
}