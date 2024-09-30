import 'package:e_comerse_app/core/constant/themes.dart';
import 'package:e_comerse_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  ThemeData appTheme = themeEnglish;
  MyServices myServices = Get.find();

  chnageLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == 'ar' ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? langOfRefrence = myServices.sharedPreferences.getString("lang");
    if (langOfRefrence == 'ar') {
      language = const Locale('ar');
      appTheme = themeArabic;
    } else if (langOfRefrence == 'en') {
      language = const Locale('en');
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = language!.languageCode == 'ar' ? themeArabic : themeEnglish;
    }

    super.onInit();
  }
}
