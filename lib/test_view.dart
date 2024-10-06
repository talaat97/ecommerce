import 'package:e_comerse_app/controller/test_controller.dart';
import 'package:e_comerse_app/core/constant/colors.dart';
import 'package:e_comerse_app/core/class/handling_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primarytColor,
        title: const Text('test data view '),
      ),
      body: Text('data'),
    );
  }
}
