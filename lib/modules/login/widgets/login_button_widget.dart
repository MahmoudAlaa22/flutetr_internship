import 'package:flutter/material.dart';
import 'package:flutter_internship/common/constant.dart';
import 'package:flutter_internship/common/theme/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 39),
      child: GestureDetector(
          onTap: () {},
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
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          )),
    );
  }
}
