import 'package:e_comerse_app/controller/home/home_controller.dart';
import 'package:e_comerse_app/data/model/iteams_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../../link_api.dart';

class Listiteams extends GetView<HomeControllerImp> {
  const Listiteams({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      height: 200,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemCount: controller.iteams.length,
          itemBuilder: (context, index) => Iteams(
              iteamsModel: IteamsModel.fromJson(controller.iteams[index]))),
    );
  }
}

class Iteams extends StatelessWidget {
  final IteamsModel iteamsModel;
  const Iteams({super.key, required this.iteamsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColor.grey600,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.network(
            "${Applink.iteamsLink}/${iteamsModel.iteamsImage}",
            height: 140,
            width: 140,
            fit: BoxFit.contain,
          ),
        ),
        Text(
          "${iteamsModel.iteamsName}",
          style: const TextStyle(fontSize: 15, color: AppColor.grey),
        ),
      ],
    );
  }
}
