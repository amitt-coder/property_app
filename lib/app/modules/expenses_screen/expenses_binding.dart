import 'package:get/get.dart';
import 'package:property/app/modules/expenses_screen/expenses_controller.dart';

class ExpensesBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<ExpensesController>(() => ExpensesController());
  }

}