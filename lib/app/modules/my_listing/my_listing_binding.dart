import 'package:get/get.dart';
import 'package:property/app/modules/my_listing/my_listing_controller.dart';

class MyListingBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MyListingController>(() => MyListingController());
  }

}