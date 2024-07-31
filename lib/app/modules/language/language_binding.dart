import 'package:get/get.dart';
import 'package:property/app/modules/language/language_controller.dart';

class LanguageBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LanguageController>(() => LanguageController());
  }

}