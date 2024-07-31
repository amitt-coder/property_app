import 'package:get/get.dart';

import 'loss_profit_by_month_controller.dart';

class LossProfitByMonthBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LossProfitByMonthController>(() => LossProfitByMonthController());
  }

}