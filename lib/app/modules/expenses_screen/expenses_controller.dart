import 'package:get/get.dart';

class ExpensesController extends GetxController{
  RxString showProperty = 'Property 1'.obs;
  RxList<String> showpropertyList = ['Property 1', 'Property 2','Property 3','Property 4'].obs;
  RxList<String> showunitList = ['Unit 1', 'Unit 2','Unit 3'].obs;
  RxString showUnit = 'Unit 1'.obs;
  RxList<String> showExpensesTypeList = ['Maintaince and repairs', 'Utilities','Taxes','Insurance','Advertising and marketing','Legal fees','Bank fees','abc'].obs;
  RxString showExpensesType = 'Maintaince and repairs'.obs;
  var isAgreed = false.obs;
  var isAgreed2 = false.obs;

  void toggleAgreement() {
    isAgreed.value = !isAgreed.value;
  }
  void toggleAgreement2() {
    isAgreed2.value = !isAgreed2.value;
  }
}