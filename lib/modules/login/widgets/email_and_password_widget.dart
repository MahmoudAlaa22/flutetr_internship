import 'package:flutter/material.dart';
import 'package:flutter_internship/common/constant.dart';
import 'package:flutter_internship/common/theme/text_style.dart';
import 'package:flutter_internship/widgets/text_form_field_widget.dart';
import 'package:get/get.dart';

import '../state_management/login_getx_controller.dart';
import 'login_button_widget.dart';

class EmailAndPasswordWidget extends StatelessWidget {
  const EmailAndPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<FormState>();
    return Padding(
        padding: const EdgeInsets.only(top: 38),
        child: GetBuilder<LoginGetxController>(builder: (controller) {
          final int itemSelected = controller.itemTabBarSelected;
          final String title = itemSelected == 1
              ? 'Forgot your username/password?'
              : 'Forgot password?';
          return Form(
            key: globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textFormFieldWidget(
                    labelText: 'Username or Email', onSaved: (v) {}),
                const SizedBox(
                  height: 23,
                ),
                textFormFieldWidget(
                    labelText: 'Password',
                    suffixIcon: GestureDetector(
                        onTap: () {
                          controller.changeStateOfPasswordVisibility(
                              !controller.passwordVisibility);
                        },
                        child: Icon(!controller.passwordVisibility
                            ? Icons.visibility_sharp
                            : Icons.visibility_off_sharp)),
                    obscureText: !controller.passwordVisibility,
                    onSaved: (v) {}),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    title,
                    style: AppTextStyle.textStyleMontserrat
                        ?.copyWith(color: const Color(AppConstant.appColor)),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      if (globalKey.currentState!.validate()) {
                        globalKey.currentState!.save();
                      }
                    },
                    child: const Center(child: LoginButtonWidget()))
              ],
            ),
          );
        }));
  }
}
