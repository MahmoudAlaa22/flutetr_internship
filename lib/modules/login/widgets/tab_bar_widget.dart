import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'tab_bar_item_widget.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: const Color(0xffF3F9FF),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            TabBarItemWidget(title: 'Live', id: 1),
            TabBarItemWidget(title: 'Paper Trading', id: 2),
          ],
        ),
      ),
    );
  }
}
