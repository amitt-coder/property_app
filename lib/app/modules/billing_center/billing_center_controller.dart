import 'package:get/get.dart';

class BillingCenterController extends GetxController {
  RxString showContact = 'All'.obs;
  RxString showProperty = 'Property 1'.obs;
  RxString showUnit = 'Unit 1'.obs;
  RxString showMonth = 'January'.obs;
  RxString invoiceType = 'Water Bill'.obs;
  RxList<String> showcontactList =
      ['All', 'Paid', 'Pending', 'Bank Pending'].obs;
  RxList<String> showpropertyList =
      ['Property 1', 'Property 2', 'Property 3', 'Property 4'].obs;
  RxList<String> showunitList = ['Unit 1', 'Unit 2', 'Unit 3'].obs;
  RxList<String> showmmonthList = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ].obs;
  RxList<String> invoiceTypeList = [
    'Water Bill',
    'House Rent',
    'Parking Rent',
    'Electricity Bill',
    'Gas Bill'
  ].obs;
}
