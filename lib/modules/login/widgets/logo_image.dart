import 'package:flutter/material.dart';

import '../../../common/assets/images.dart';

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 87.41),
      child: Center(
        child: Image.asset(Images.frame2,
        width: 80.11,
          height: 87.4,
        ),
      ),
    );
  }
}
