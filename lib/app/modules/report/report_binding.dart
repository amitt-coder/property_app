import 'package:get/get.dart';
import 'package:property/app/modules/report/report_controller.dart';

class ReportBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ReportController>(() => ReportController());
  }

}