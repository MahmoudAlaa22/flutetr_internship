import 'package:get/get.dart';

class LoginGetxController extends GetxController{
  int itemTabBarSelected=1;
  String? titleDescription;
  bool passwordVisibility = false;

  void changeItemTabBarSelected({int? id}){
    itemTabBarSelected=id!;
    update();
  }
  void changeStateOfPasswordVisibility(bool b) {
    passwordVisibility = b;
    update();
  }
}