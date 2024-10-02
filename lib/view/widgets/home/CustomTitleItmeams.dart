import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class Customtitleitmeams extends StatelessWidget {
  final String title;
  const Customtitleitmeams({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: AppColor.grey600),
      ),
    );
  }
}
