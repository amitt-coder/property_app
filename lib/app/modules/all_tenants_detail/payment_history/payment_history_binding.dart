import 'package:get/get.dart';
import 'package:property/app/modules/all_tenants_detail/payment_history/payment_history_controller.dart';

class PaymentHistoryBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PaymentHistoryController>(() => PaymentHistoryController());
  }

}