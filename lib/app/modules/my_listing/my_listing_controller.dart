import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:property/app/modules/upload_listing/upload_listing_screen.dart';
import '../all_listing/all_listing_screen.dart';

class MyListingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  List<Widget> listingScreens = [
    UploadListingScreen(),
    AllListingScreen(),
    // ContactListScreen(),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
