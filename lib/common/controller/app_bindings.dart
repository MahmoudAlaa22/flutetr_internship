
import 'package:get/get.dart';

import '../../modules/login/state_management/login_getx_controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    ///To initialize [LoginGetxController] when app start
    Get.put(LoginGetxController());
  }

}