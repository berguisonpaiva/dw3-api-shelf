import 'package:get/get.dart';
import 'package:pizza_delivery_app/app/modules/logi/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
