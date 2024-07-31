import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property/app/modules/all_property/all_property_screen.dart';

import '../all_unit/all_unit_screen.dart';

class PropertiesTabController extends GetxController with GetSingleTickerProviderStateMixin{

  late TabController tabController;


  List<Widget> listingScreens = [
    AllPropertyScreen(),
    AllUnitScreen(),
    AllPropertyScreen(),
    AllPropertyScreen(),
  ];


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 4, vsync: this,);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}