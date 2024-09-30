import 'package:e_comerse_app/binding/initial-binding.dart';
import 'package:e_comerse_app/core/localization/change_local.dart';
import 'package:e_comerse_app/core/localization/translation.dart';
import 'package:e_comerse_app/core/services/services.dart';
import 'package:e_comerse_app/routs.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController localecontroller = Get.put(LocaleController());
    return GetMaterialApp(
     
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: localecontroller.language,
      theme: localecontroller.appTheme,
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
