import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginGetxController extends GetxController{
  int itemTabBarSelected=1;
  String? titleDescription;
  bool passwordVisibility = false;
  final globalKey = GlobalKey<FormState>();

  void changeItemTabBarSelected({int? id}){
    itemTabBarSelected=id!;
    update();
  }
  void changeStateOfPasswordVisibility(bool b) {
    passwordVisibility = b;
    update();
  }
}