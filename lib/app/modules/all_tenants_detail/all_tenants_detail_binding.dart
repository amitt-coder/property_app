import 'package:get/get.dart';
import 'package:property/app/modules/all_tenants_detail/all_tenants_detail_controller.dart';
import 'package:property/app/modules/all_tenants_screen/all_tenants_binding.dart';

class AllTenantsDetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AllTenantsDetailController>(() => AllTenantsDetailController());
  }

}