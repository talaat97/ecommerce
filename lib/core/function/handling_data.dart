import 'package:e_comerse_app/core/class/status_request.dart';
import 'package:e_comerse_app/core/constant/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//TODO iam not useing it 
class HandlingData extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingData(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Lottie.asset(AppImageAsset.loading)
        : statusRequest == StatusRequest.offlinefailure
            ? Lottie.asset(AppImageAsset.serverfailure)
            : statusRequest == StatusRequest.serverfailure
                ? Lottie.asset(AppImageAsset.error)
                : statusRequest == StatusRequest.failure
                    ? const Text('No Data')
                    : widget;
  }
}
