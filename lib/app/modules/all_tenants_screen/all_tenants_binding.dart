import 'package:get/get.dart';
import 'package:property/app/modules/all_tenants_screen/all_tenants_controller.dart';

class AllTenantsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AllTenantsController>(() => AllTenantsController());
  }

}