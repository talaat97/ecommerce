import 'package:e_comerse_app/view/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int i);
}

class HomescreenControllerImp extends HomeScreenController {
  int currentPage = 0;
  List<Widget> listPage = [
    const Scaffold(
      body: HomePage(),
    ),
    const Scaffold(
      body: Center(child: Text('profile page')),
    ),
    const Scaffold(
      body: Center(child: Text('Favorite page')),
    ),
    const Scaffold(
      body: Center(child: Text('categories page ')),
    ),
  ];
  @override
  changePage(int i) {
    currentPage = i;
    update();
  }
}
