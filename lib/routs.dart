import 'package:e_comerse_app/core/constant/routs_page.dart';
import 'package:e_comerse_app/core/middleware/mymiddleware.dart';
import 'package:e_comerse_app/view/screens/auth/forget%20Password/check_email.dart';
import 'package:e_comerse_app/view/screens/auth/sign_up.dart';
import 'package:e_comerse_app/view/screens/auth/forget%20Password/reset_password.dart';
import 'package:e_comerse_app/view/screens/auth/forget%20Password/success_reset_password.dart';
import 'package:e_comerse_app/view/screens/choose_lang.dart';
import 'package:e_comerse_app/view/screens/home/home_page.dart';
import 'package:e_comerse_app/view/screens/home/iteams_page.dart';
import 'package:e_comerse_app/view/widgets/home/ListIteams.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'view/screens/auth/forget Password/verfiy_code_check_email.dart';
import 'view/screens/auth/success_sign_up.dart';
import 'view/screens/auth/verfiy_code_signup.dart';
import 'view/screens/on_boarding_screen.dart';
import 'view/screens/auth/login.dart';
import 'view/widgets/home/homescreen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language(), middlewares: [
    Mymiddleware(),
  ]),

  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  //////////////////////////Auth//////////////////////
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.verfiyCodeSignup, page: () => const VerfiyCodeSignUp()),
///////////////////////////////forget passwrod////////////////////////
  GetPage(name: AppRoute.forgetPassword, page: () => const CheckEmail()),
  GetPage(name: AppRoute.checkemail, page: () => const CheckEmail()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(
      name: AppRoute.verfiyCodeCheckEmail,
      page: () => const VerfiyCodeCheckEmail()),
//////////////////////////////////Home //////////////////////
  GetPage(name: AppRoute.home, page: () => const Homescreen()),
  GetPage(name: AppRoute.items, page: () => const ItemsScreen()),
];
