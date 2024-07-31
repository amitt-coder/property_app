import 'package:get/get.dart';
import 'package:property/app/modules/report/earning/earning_controller.dart';

class EarningBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<EarningController>(() => EarningController());
  }

}