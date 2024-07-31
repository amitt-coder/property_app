import 'package:get/get.dart';
import 'package:property/app/modules/drawer/drawer_controller.dart';

class DrawerBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DrawerController>(() => DrawerController());
  }

}