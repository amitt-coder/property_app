import 'package:get/get.dart';

class AgreementController extends GetxController{

  RxString showProperty = 'Property 1'.obs;
  RxList<String> showpropertyList = ['Property 1', 'Property 2','Property 3','Property 4'].obs;
  RxString selectUnit = 'Unit 1'.obs;
  RxList<String> selectUnitList = ['Unit 1', 'Unit 2','Unit 3'].obs;
}