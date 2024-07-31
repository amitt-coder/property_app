import 'package:get/get.dart';
import 'package:property/app/modules/all_listing/all_listing_controller.dart';

class AllListingBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<AllListingController>(() => AllListingController());
  }

}