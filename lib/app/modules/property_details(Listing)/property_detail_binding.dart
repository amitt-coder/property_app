import 'package:get/get.dart';
import 'package:property/app/modules/property_details(Listing)/property_detail_controller.dart';

class PropertyDetailBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<PropertyDetailController>(() => PropertyDetailController());
    // TODO: implement dependencies
  }

}