import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_delivery_app/app/modules/home/home_binding.dart';
import 'package:pizza_delivery_app/app/modules/home/home_page.dart';
import 'package:pizza_delivery_app/app/modules/logi/login_binding.dart';
import 'package:pizza_delivery_app/app/modules/logi/login_page.dart';
import 'package:pizza_delivery_app/app/modules/splash/splash_binding.dart';
import 'package:pizza_delivery_app/app/modules/splash/splash_page.dart';

class UiConfig {
  UiConfig._();

  static final appTheme = ThemeData(
    primaryColor: Color(0xFF9D0000),
    primarySwatch: Colors.red,
  );

  static final routes = <GetPage>[
    GetPage(
      name: SplashPage.ROUTE_PAGE,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: HomePage.ROUTE_PAGE,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: LoginPage.ROUTE_PAGE,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
