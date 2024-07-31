import 'package:get/get.dart';
import 'package:property/app/modules/maintains_tab/maintain_tab_controller.dart';

class MaintainTabBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MaintainTabController>(() =>MaintainTabController());
  }

}