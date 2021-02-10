import 'package:get/get.dart';
import 'package:pizza_delivery_app/app/modules/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
