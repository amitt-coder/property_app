import 'package:get/get.dart';
import 'package:property/app/modules/report/maintenance_report/maintenance_report_controller.dart';

class MaintenanceReportBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MaintenanceReportController>(() => MaintenanceReportController());
  }

}