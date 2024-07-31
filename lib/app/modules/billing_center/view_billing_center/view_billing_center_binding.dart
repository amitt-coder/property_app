import 'package:get/get.dart';
import 'package:property/app/modules/billing_center/view_billing_center/view_billing_center_controller.dart';

class ViewBillingCenterBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ViewBillingCenterController>(() => ViewBillingCenterController());
  }

}