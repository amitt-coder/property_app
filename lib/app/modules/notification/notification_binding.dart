import 'package:get/get.dart';
import 'package:property/app/modules/notification/notification_controller.dart';

class NotificationBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<NotificationController>(() => NotificationController());
  }

}