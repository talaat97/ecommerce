import 'package:e_comerse_app/core/constant/routs_page.dart';
import 'package:e_comerse_app/core/services/services.dart';
import 'package:e_comerse_app/data/datasourse/remote/home/home_data.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/function/handling_data_controller.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
  goToItems(List categories, int selectedCat, String catName);
}

class HomeControllerImp extends HomeController {
  HomeData homeData = HomeData(Get.find());
  StatusRequest statusRequest = StatusRequest.loading;
  MyServices myServices = Get.find();
  List categories = [];
  List iteams = [];
  String? username;
  String? id;
  String? lang;
  @override
  void onInit() {
    getData();
    initialData();
    super.onInit();
  }

  @override
  initialData() {
    lang = myServices.sharedPreferences.getString('lang');
    username = myServices.sharedPreferences.getString('username');
    id = myServices.sharedPreferences.getString('id');
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;

    var response = await homeData.getData();
    statusRequest = handlingData(response);

    if (StatusRequest.sucess == statusRequest) {
      if (response['status'] == 'success') {
        categories.addAll(response['categories']);
        iteams.addAll(response['iteams']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories, selectedCat, catName) {
    Get.toNamed(AppRoute.items, arguments: {
      'categories': categories,
      'selectedCat': selectedCat,
      'catName': catName,
    });
  }
}
