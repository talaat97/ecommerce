import 'package:e_comerse_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home/homeScreen_controller.dart';

// ignore: must_be_immutable

class CustomButtonbar extends StatelessWidget {
  const CustomButtonbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomescreenControllerImp>(
      builder: (controller) => BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        color: AppColor.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: [
            Row(
              children: [
                OneButtonAppBar(
                  pageName: '45'.tr,
                  pageIcon: Icons.home,
                  onPressed: () {
                    controller.changePage(0);
                  },
                  active: controller.currentPage == 0,
                ),
                OneButtonAppBar(
                  pageName: '46'.tr,
                  pageIcon: Icons.person,
                  onPressed: () {
                    controller.changePage(1);
                  },
                  active: controller.currentPage == 1,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                OneButtonAppBar(
                  pageName: '47'.tr,
                  pageIcon: Icons.favorite,
                  onPressed: () {
                    controller.changePage(2);
                  },
                  active: controller.currentPage == 2,
                ),
                OneButtonAppBar(
                  pageName: '48'.tr,
                  pageIcon: Icons.category,
                  onPressed: () {
                    controller.changePage(3);
                  },
                  active: controller.currentPage == 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class OneButtonAppBar extends StatelessWidget {
  final String pageName;
  final IconData pageIcon;
  bool? active;
  final void Function() onPressed;
  OneButtonAppBar({
    super.key,
    required this.pageName,
    required this.pageIcon,
    required this.onPressed,
    this.active,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(pageIcon,
              size: active == true ? 35 : 25,
              color: active == true ? AppColor.primarytColor : AppColor.grey),
          Text(
            pageName,
            style: TextStyle(
                color: active == true ? AppColor.primarytColor : AppColor.grey),
          ),
        ],
      ),
    );
  }
}
