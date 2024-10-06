import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_comerse_app/core/constant/colors.dart';
import 'package:e_comerse_app/core/function/translate_database.dart';
import 'package:e_comerse_app/data/model/iteams_model.dart';
import 'package:flutter/material.dart';

import '../../../link_api.dart';

class CustomThemeItems extends StatelessWidget {
  final IteamsModel iteamsModel;
  const CustomThemeItems({super.key, required this.iteamsModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: "${Applink.iteamsLink}/${iteamsModel.iteamsImage}",
                height: 100,
                fit: BoxFit.contain,
              ),
              Text(
                '${tr(iteamsModel.iteamsName,iteamsModel.iteamsNameAr)}',
                style: const TextStyle(
                    fontSize: 20,
                    color: AppColor.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${tr(iteamsModel.iteamsDec,iteamsModel.iteamsDecAr)}',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Rating'),
                  const SizedBox(
                    width: 10,
                  ),
                  ...List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star_border,
                      size: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '${iteamsModel.iteamsPrice}' '\$',
                    style: const TextStyle(color: AppColor.primarytColor),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: AppColor.primarytColor,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
