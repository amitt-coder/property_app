import 'package:get/get.dart';
import 'package:property/app/modules/change_password/change_password_controller.dart';

class ChangePasswordBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ChangePasswordController>(() => ChangePasswordController());
  }

}