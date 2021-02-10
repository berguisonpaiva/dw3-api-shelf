import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_delivery_app/app/modules/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  static const String ROUTE_PAGE = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(),
    );
  }
}
