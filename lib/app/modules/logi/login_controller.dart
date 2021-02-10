import 'package:get/get.dart';

class LoginController extends GetxController {
  final _obscureText = true.obs;

  get obscureText => _obscureText.value;

  void showHidePassword() => _obscureText.toggle();
}
