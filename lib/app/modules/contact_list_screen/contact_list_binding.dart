import 'package:get/get.dart';
import 'package:property/app/modules/contact_list_screen/contact_list_controller.dart';

class ContactListBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ContactListController>(() => ContactListController());
    // TODO: implement dependencies
  }

}