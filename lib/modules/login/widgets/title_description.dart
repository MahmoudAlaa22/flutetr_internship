import 'package:flutter/material.dart';
import 'package:flutter_internship/common/constant.dart';
import 'package:get/get.dart';

import '../../../common/theme/text_style.dart';
import '../const/login_constant.dart';
import '../state_management/login_getx_controller.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 31, left: 20, right: 20),
      child: GetBuilder<LoginGetxController>(builder: (controller) {
        final int itemSelected = controller.itemTabBarSelected;
        final String title = itemSelected == 1
            ? LoginConst.liveTitleDescription
            : LoginConst.PaperTradingTitleDescription;

        return SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.textStyleLato?.copyWith(
                    color: itemSelected == 1
                        ? const Color(AppConstant.appColor)
                        : const Color(0xff333333)),
              ),
              const SizedBox(
                height: 26.4,
              ),
              Text(
                'Log in',
                style: AppTextStyle.textStyleLato?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(AppConstant.appColor)),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  style: AppTextStyle.textStyleMontserrat
                      ?.copyWith(color: Colors.black),
                  text: 'Don’t have an account? ',
                ),
                TextSpan(
                  style: AppTextStyle.textStyleMontserrat
                      ?.copyWith(color: const Color(AppConstant.appColor)),
                  text: 'Sign Up.',
                )
              ])),
            ],
          ),
        );
      }),
    );
  }
}
