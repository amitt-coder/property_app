import 'package:get/get.dart';
import 'package:property/app/modules/Dashboard/dashboard_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<DashBoardController>(() => DashBoardController());
  }

}