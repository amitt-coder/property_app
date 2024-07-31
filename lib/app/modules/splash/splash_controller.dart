import 'dart:async';

import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class SplashController extends GetxController{



  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.LOGIN,);
    });
  }

}