import 'package:e_comerse_app/controller/home/homeScreen_controller.dart';
import 'package:e_comerse_app/core/constant/colors.dart';
import 'package:e_comerse_app/view/widgets/home/CustomButtonAppbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomescreenControllerImp());
    return GetBuilder<HomescreenControllerImp>(
      builder: (controller) => Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(60)),
          backgroundColor: AppColor.primarytColor,
          foregroundColor: AppColor.grey200,
          onPressed: () {},
          child: const Icon(Icons.shopping_basket_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomButtonbar(),
        body: controller.listPage.elementAt(controller.currentPage),
      ),
    );
  }
}
