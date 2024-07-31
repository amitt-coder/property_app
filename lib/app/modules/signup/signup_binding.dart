import 'package:get/get.dart';
import 'package:property/app/modules/signup/signup_controller.dart';

class SignupBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut<SignupController>(() => SignupController());
  }

}