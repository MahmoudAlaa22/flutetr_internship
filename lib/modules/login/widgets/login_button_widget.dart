import 'package:flutter/material.dart';
import 'package:flutter_internship/common/constant.dart';
import 'package:flutter_internship/common/theme/text_style.dart';
import 'package:flutter_internship/modules/login/state_management/login_getx_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginGetxController = Get.find<LoginGetxController>();
    return Padding(
      padding: const EdgeInsets.only(top: 39),
      child: GestureDetector(
        onTap: () {
          if (loginGetxController.globalKey.currentState!.validate()) {
            loginGetxController.globalKey.currentState!.save();
            //TODO Function check if email and password is correct.
          }
        },
        child: Container(
          alignment: Alignment.center,
          width: 133,
          height: 46,
          decoration: BoxDecoration(
            color: const Color(AppConstant.appColor),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Login',
            style: GoogleFonts.roboto(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
