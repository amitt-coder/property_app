import 'package:get/get.dart';
import 'package:property/app/modules/all_tenants_detail/profile_information/profile_information_controller.dart';

class ProfileInformationBinding extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ProfileInformationController>(() => ProfileInformationController());
  }

}