import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_get_x/pages/deteil/deteil_page.dart';
import 'package:learn_get_x/pages/home/home_page.dart';
import 'package:learn_get_x/services/di_service.dart';

void main() async {
  await DIService.init();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomePage(),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: '/detail',
          page: () => const DetailPage(),
          transition: Transition.leftToRightWithFade,
        ),
      ],
      home: HomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}


