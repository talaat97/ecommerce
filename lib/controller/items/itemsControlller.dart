import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/function/handling_data_controller.dart';
import '../../data/datasourse/remote/items/Items_data.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changeCat(int i, String catName);
  getItemsByCategory(String catName);
}

class ItemsControllerTmp extends ItemsController {
  ItemsData itemsData = ItemsData(Get.find());

  List items = [];
  String? catName;
  StatusRequest statusRequest = StatusRequest.loading;
  List categories = [];
  int? selectedCat;

  @override
  void onInit() {
    super.onInit();
    initialData();
  }

  @override
  initialData() {
    categories = Get.arguments['categories'];
    selectedCat = Get.arguments['selectedCat'];
    catName = Get.arguments['catName'];
    getItemsByCategory(catName!);
  }

  @override
  changeCat(i, catName) {
    selectedCat = i;
    getItemsByCategory(catName);
    update();
  }

  @override
  getItemsByCategory(catName) async {
    items.clear();
    statusRequest = StatusRequest.loading;

    var response = await itemsData.getData(
      catName,
    );
    statusRequest = handlingData(response);

    if (StatusRequest.sucess == statusRequest) {
      if (response['status'] == 'success') {
        items.addAll(response['data']);
        print(items);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
