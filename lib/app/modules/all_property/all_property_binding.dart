import 'package:get/get.dart';
import 'package:property/app/modules/all_property/all_property_controller.dart';

class AllPropertyBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AllPropertyController>(() => AllPropertyController());
  }

}