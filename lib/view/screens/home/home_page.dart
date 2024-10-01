import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home/home_controller.dart';
import '../../../core/constant/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Find Product",
                      hintStyle: const TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                      filled: true,
                      fillColor: Colors.grey[200]),
                )),
                const SizedBox(width: 10),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                  width: 60,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                        color: Colors.grey[600],
                      )),
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Stack(children: [
                Container(
                  alignment: Alignment.center,
                  height: 150,
                  decoration: BoxDecoration(
                      color: AppColor.primarytColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const ListTile(
                    title: Text("A summer surprise",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    subtitle: Text("Cashback 20%",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        color: AppColor.grey,
                        borderRadius: BorderRadius.circular(160)),
                  ),
                )
              ]),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Category',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.grey[600]),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              height: 120,
              child: ListView.builder(
                
                itemBuilder: (context, index) => ,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
               
              ),
            )
          ],
        ),
      ),
    );
  }
}
