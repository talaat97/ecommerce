import 'package:e_comerse_app/controller/items/itemsControlller.dart';
import 'package:e_comerse_app/core/class/handling_data.dart';
import 'package:e_comerse_app/data/model/iteams_model.dart';
import 'package:e_comerse_app/view/widgets/items/CustomlistItems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/home/customAppbar.dart';
import '../../widgets/items/ListCategoriesItems.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerTmp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppbar(
              title: 'find product',
              onPreesedIcon: () {},
              onPreesedSearch: () {},
            ),
            const ListCategoriesItems(),
            GetBuilder<ItemsControllerTmp>(
              builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.items.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return CustomThemeItems(
                        iteamsModel:
                            IteamsModel.fromJson(controller.items[index]));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
