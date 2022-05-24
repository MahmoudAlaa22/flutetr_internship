import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/constant.dart';
import '../state_management/login_getx_controller.dart';

class TabBarItemWidget extends StatelessWidget {
  const TabBarItemWidget({Key? key, required this.title, required this.id}) : super(key: key);
final String title;
final int id;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginGetxController>(
        builder: (controller){
      return GestureDetector(
        onTap: (){
          controller.changeItemTabBarSelected(id: id);
        },
        child: Container(
          alignment:Alignment.center ,
          width: 154,
          height: 33,
          decoration:  BoxDecoration(
              color: id==controller.itemTabBarSelected?
              const Color(AppConstant.appColor):Colors.transparent,
              borderRadius:BorderRadius.circular(12)
          ),
          child: Text(title,
            style: GoogleFonts.lato(
              color: id==controller.itemTabBarSelected?
              Colors.white:const Color(AppConstant.appColor),
              fontSize: 16,
              fontWeight:FontWeight.w400,

            ),),
        ),
      );
    });
  }
}
