import 'package:get/get.dart';
import 'package:property/app/modules/billing_center/billing_center_controller.dart';

class BillingCenterBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<BillingCenterController>(() => BillingCenterController());
  }

}