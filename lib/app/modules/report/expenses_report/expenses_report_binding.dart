import 'package:get/get.dart';
import 'expenses_report_controller.dart';

class ExpensesReportBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ExpensesReportController>(() => ExpensesReportController());
  }

}