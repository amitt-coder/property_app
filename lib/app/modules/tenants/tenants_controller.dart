import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property/app/modules/all_tenants_screen/all_tenants_screen.dart';

import '../tenant_history/tenant_history.dart';

class TenantsController extends GetxController with GetSingleTickerProviderStateMixin{

  late TabController tabController;


  List<Widget> listingScreens = [
    AllTenantsScreen(),
    TenantHistory(),
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