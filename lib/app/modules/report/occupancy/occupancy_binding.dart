import 'package:get/get.dart';
import 'package:property/app/modules/report/occupancy/occupancy_controller.dart';

class OccupancyBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<OccupancyController>(() => OccupancyController());
  }

}