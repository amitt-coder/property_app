import 'package:get/get.dart';
import 'package:property/app/modules/all_tenants_screen/all_tenant_edit/all_tenant_edit_controller.dart';

class AllTenantEditBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AllTenantEditController>(() => AllTenantEditController());
  }

}