

import 'package:get/get.dart';

import '../../modules/login/login.dart';

class AppPages {
  static const initial = LoginView.routeName;

  static final routes = [
    GetPage(
      name:LoginView.routeName,
      page: () => const LoginView(),
    ),
  ];
}