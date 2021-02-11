import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:pizza_delivery_app/app/components/pizza_delivery_button.dart';
import 'package:pizza_delivery_app/app/components/pizza_delivery_input.dart';
import 'package:pizza_delivery_app/app/modules/logi/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  static const String ROUTE_PAGE = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: Get.mediaQuery.size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 250,
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    PizzaDeliveryInput(
                      label: "E-mail",
                      validator: (String value) {
                        if (value == null || value.isBlank || !value.isEmail) {
                          return 'E-mail invalido';
                        }
                        return null;
                      },
                    ),
                    Obx(
                      () => PizzaDeliveryInput(
                        label: "Entrar",
                        suffixIcon: Icon(FontAwesome.key),
                        suffixIconOnPressed: controller.showHidePassword,
                        obscureText: controller.obscureText,
                        validator: (String value) {
                          if (value.length < 6) {
                            return 'Senha deve Conter no minimo 6 caracteres';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PizzaDeliveryButton(
                      onPressed: () =>
                          controller.login('pberguison@gmail.com', '123123'),
                      labelText: 'Salvar',
                      width: Get.mediaQuery.size.width * .8,
                      heitght: 50,
                      buttonColor: Get.theme.primaryColor,
                      labelSize: 20,
                      labelColor: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cadastre-se',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
