import 'package:get/get.dart';
import 'package:property/app/modules/all_tenants_detail/document/document_controller.dart';

class DocumentBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DocumentController>(() => DocumentController());
  }

}