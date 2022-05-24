import 'package:flutter/material.dart';
import 'package:flutter_internship/common/assets/images.dart';
import 'package:get/get.dart';


import 'widgets/email_and_password_widget.dart';
import 'widgets/login_button_widget.dart';
import 'widgets/logo_image.dart';
import 'widgets/tab_bar_widget.dart';
import 'widgets/title_description.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  static const String routeName = "/LoginView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 56.53),
              child: Image.asset(Images.frame1,
              fit: BoxFit.cover,
              width: 610,
              height: 660.97,),
            ),
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center ,
                  children: const [
                    LogoImageWidget(),
                    TabBarWidget(),
                    TitleDescription(),
                    EmailAndPasswordWidget(),
                    LoginButtonWidget()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
