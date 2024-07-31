import 'package:get/get.dart';
import 'package:property/app/modules/report/tenant_report/tenant_report_controller.dart';

class TenantReportBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TenantReportController>(() => TenantReportController());
  }

}