import 'package:get/get.dart';
import 'package:property/app/modules/properties_tabs/properties_tab_controller.dart';

class PropertiesTabBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<PropertiesTabController>(() => PropertiesTabController());
  }

}