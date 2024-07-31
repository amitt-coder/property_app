import 'package:get/get.dart';
import 'package:property/app/modules/agreement/agreement_controller.dart';

class AgreementBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AgreementController>(() => AgreementController());
  }

}