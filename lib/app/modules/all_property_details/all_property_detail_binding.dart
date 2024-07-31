import 'package:get/get.dart';
import 'package:property/app/modules/all_property_details/all_property_detail_controller.dart';

class AllPropertyDetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AllPropertyDetailController>(() => AllPropertyDetailController());
  }

}