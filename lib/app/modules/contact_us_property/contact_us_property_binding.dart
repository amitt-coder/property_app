import 'package:get/get.dart';
import 'package:property/app/modules/contact_us_property/contact_us_property_controlller.dart';

class ContactUsPropertyBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<ContactUsPropertyController>(() => ContactUsPropertyController());
  }

}