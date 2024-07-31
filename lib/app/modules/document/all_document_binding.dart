import 'package:get/get.dart';
import 'all_document_controller.dart';

class AllDocumentBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AllDocumentController>(() => AllDocumentController());
  }

}