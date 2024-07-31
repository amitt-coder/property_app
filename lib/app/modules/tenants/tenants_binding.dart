import 'package:get/get.dart';
import 'package:property/app/modules/tenants/tenants_controller.dart';

class TenantsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TenantsController>(() => TenantsController());
  }

}