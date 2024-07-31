import 'package:get/get.dart';
import 'package:property/app/modules/upload_listing/upload_listing_controller.dart';

class UploadListingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<UploadListingController>(() => UploadListingController());
  }

}