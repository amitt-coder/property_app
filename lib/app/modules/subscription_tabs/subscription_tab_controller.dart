import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../monthly_subscription/monthly_subscription_screen.dart';
import '../yearly_subscription/yearly_subscription.dart';

class SubscriptionTabController extends GetxController with GetSingleTickerProviderStateMixin{


  late TabController tabController;


  List<Widget> listingScreens = [
    MonthlySubscriptionScreen(),
    YearlySubscriptionScreen(),
  ];


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 2, vsync: this,);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

}