import 'package:get/get.dart';
import 'package:property/app/modules/bottom_navigation/bottom_navigation_controller.dart';

class BottomNavigationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationController>(() => BottomNavigationController());
  }

}