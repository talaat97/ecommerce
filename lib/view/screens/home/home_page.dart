import 'package:e_comerse_app/core/class/handling_data.dart';
import 'package:e_comerse_app/view/widgets/home/CustomCardHome.dart';
import 'package:e_comerse_app/view/widgets/home/CustomTitleItmeams.dart';
import 'package:e_comerse_app/view/widgets/home/ListIteams.dart';
import 'package:e_comerse_app/view/widgets/home/customAppbar.dart';
import 'package:e_comerse_app/view/widgets/home/listCategories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppbar(
                      title: '39'.tr,
                      onPreesedIcon: () {},
                      onPreesedSearch: () {},
                    ),
                    Customcardhome(title: '40'.tr, body: '41'.tr),
                    Customtitleitmeams(title: '42'.tr),
                    const Listcategories(),
                    Customtitleitmeams(title: '43'.tr),
                    const Listiteams(),
                    Customtitleitmeams(title: '44'.tr),
                    const Listiteams(),
                  ],
                ),
              ),
            ));
  }
}
