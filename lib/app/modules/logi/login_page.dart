import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_delivery_app/app/modules/logi/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  static const String ROUTE_PAGE = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Container(),
    );
  }
}
