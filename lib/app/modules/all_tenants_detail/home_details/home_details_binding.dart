import 'package:get/get.dart';
import 'package:property/app/modules/all_tenants_detail/home_details/home_details_controller.dart';

class HomeDetailsBinding extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeDetailsController>(() => HomeDetailsController());
  }

}