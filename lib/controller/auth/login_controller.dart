import 'dart:developer';

import 'package:e_comerse_app/core/constant/routs_page.dart';
import 'package:e_comerse_app/core/services/services.dart';
import 'package:e_comerse_app/data/datasourse/remote/Auth/login_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/function/handling_data_controller.dart';

abstract class LogeinCotroller extends GetxController {
  login();
  goToSignUp();
  goToForgetpassword();
}

class LogeinControllerImp extends LogeinCotroller {
  MyServices myServices = Get.find();
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool isShowPassword = false;
  LoginData loginData = LoginData(Get.find());
  StatusRequest? statusRequest;

  @override
  login() async {
    if (formkey.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(
        email.text,
        password.text,
      );
      statusRequest = handlingData(response);
      // print(' login Contorller page ============================= $response');
      if (StatusRequest.sucess == statusRequest) {
        if (response['status'] == "success") {
          myServices.sharedPreferences.setString('id', response['data']['user_id']);
          myServices.sharedPreferences.setString('name', response['data']['user_name']);
          myServices.sharedPreferences.setString('email', response['data']['user_email']);
          myServices.sharedPreferences.setString('phone', response['data']['user_phone']);
          myServices.sharedPreferences.setString('step', '2');
          Get.offNamed(AppRoute.home);
        } else {
          Get.defaultDialog(
              title: 'OPPPS!',
              middleText: "looks like you dont have account yet!");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      String? token = value;
      print('token of firebase ====================================== $token');
    });
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  goToForgetpassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
