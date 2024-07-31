import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../maintainer_request/maintain_request_screen.dart';
import '../maintainers/maintainers_screen.dart';

class MaintainTabController extends GetxController with GetSingleTickerProviderStateMixin{


  late TabController tabController;


  List<Widget> listingScreens = [
    MaintainersScreen(),
    MaintainRequestScreen(),
  ];


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 3, vsync: this,);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}