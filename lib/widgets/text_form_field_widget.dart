
import 'package:flutter/material.dart';
import 'package:flutter_internship/common/theme/text_style.dart';



final InputBorder _inputBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(12));

Widget  textFormFieldWidget(
    {required String labelText,
    required Function(String) onSaved,
      bool obscureText=false,
      suffixIcon,
    int maxLines = 1}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      decoration:  BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(
          blurRadius: 18,
          offset:Offset(-4,4),
          color: Color.fromRGBO(0, 0, 0, 0.09)
        )]
      ),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          // fillColor: Color(0xffF6F6F6),
          labelStyle: AppTextStyle.textStyleMontserrat?.copyWith(
            color: const Color(0xff969696),
          ),
          labelText: labelText,
          focusedBorder: _inputBorder,
          enabledBorder: _inputBorder,
          suffixIcon:suffixIcon
        ),
        obscureText: obscureText,
        onSaved:  (v){
          onSaved(v!);
        },
        validator: (v) {
          if (v!.isEmpty) {
            return "You should not make this field empty";
          }
          return null;
        },
        maxLines: maxLines,
      ),
    ),
  );
}
