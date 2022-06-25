// Dependency Injection
// Singleton

import 'package:get/get.dart';
import '../pages/deteil/deteil_controller.dart';
import '../pages/home/home_controller.dart';

class DIService {
  static Future<void> init() async {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<DetailController>(() => DetailController(), fenix: true);
  }
}