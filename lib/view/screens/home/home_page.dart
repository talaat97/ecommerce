import 'package:e_comerse_app/core/function/handling_data.dart';
import 'package:e_comerse_app/view/widgets/home/CustomCardHome.dart';
import 'package:e_comerse_app/view/widgets/home/CustomTitleItmeams.dart';
import 'package:e_comerse_app/view/widgets/home/ListIteams.dart';
import 'package:e_comerse_app/view/widgets/home/customAppbar.dart';
import 'package:e_comerse_app/view/widgets/home/listCategories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controller/home/home_controller.dart';
import '../../../core/constant/colors.dart';
import '../../../link_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
          builder: (controller) => HandlingData(
                statusRequest: controller.statusRequest,
                widget: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      CustomAppbar(
                        title: 'find product',
                        onPreesedIcon: () {},
                        onPreesedSearch: () {},
                      ),
                      const Customcardhome(
                          title: 'A simmer offre ', body: "Cashback 20 %"),
                      const Listcategories(),
                      const Customtitleitmeams(
                        title: 'Best sailer',
                      ),
                      const Listiteams(),
                      const Customtitleitmeams(
                        title: 'Offer',
                      ),
                      const Listiteams(),
                    ],
                  ),
                ),
              )),
    );
  }
}
