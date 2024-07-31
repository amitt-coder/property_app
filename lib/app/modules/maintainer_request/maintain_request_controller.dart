import 'package:get/get.dart';

class MaintainRequestController extends GetxController{

  RxString showProperty = 'Property 1'.obs;
  RxList<String> showpropertyList = ['Property 1', 'Property 2','Property 3','Property 4'].obs;
  RxString showUnit = 'unit 1'.obs;
  RxList<String> showunitList = ['unit 1', 'unit 2','unit 3','unit 4'].obs;
  RxString issueName = 'plumbing problems'.obs;
  RxList<String> issueNameList = ['plumbing problems', 'HVAC malfunction','Electical problem','Strutural issues','Pest infestations'].obs;
  RxString issueStatus = 'Completed'.obs;

  RxList<String> issueStatusList = ['Completed', 'pending','In Progress',].obs;
}