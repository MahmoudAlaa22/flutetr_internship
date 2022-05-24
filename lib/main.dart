import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/app_routes/getx_routes.dart';
import 'common/controller/app_bindings.dart';
import 'common/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      initialBinding: AppBindings(),
    );
  }
}
