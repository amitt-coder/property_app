import 'package:get/get.dart';
import 'package:property/app/modules/subscription_tabs/subscription_tab_controller.dart';

class SubscriptionTabsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SubscriptionTabController>(() => SubscriptionTabController());
  }

}