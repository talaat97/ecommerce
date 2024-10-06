import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final void Function()? onPreesedIcon;
  final void Function()? onPreesedSearch;
  const CustomAppbar({
    super.key,
    required this.title,
    required this.onPreesedIcon,
    required this.onPreesedSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: onPreesedSearch, icon: const Icon(Icons.search)),
                hintText: title,
                hintStyle: const TextStyle(fontSize: 18),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: AppColor.grey200),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 70,
          decoration: BoxDecoration(
              color: AppColor.grey200, borderRadius: BorderRadius.circular(15)),
          width: 60,
          child: IconButton(
              onPressed: onPreesedIcon,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: AppColor.grey600,
              )),
        )
      ]),
    );
  }
}
