import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/modules/subscription_tabs/subscription_tab_controller.dart';

import '../../common_widget/common_app_bar.dart';
import '../../utilis/theme.dart';

class SubcriptionTabs extends StatefulWidget {
  const SubcriptionTabs({super.key});

  @override
  State<SubcriptionTabs> createState() => _SubcriptionTabsState();
}

class _SubcriptionTabsState extends State<SubcriptionTabs> {

  SubscriptionTabController subscriptionTabController = Get.put(SubscriptionTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: 'Subscription',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
         children: [
           SizedBox(height: 20,),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
             child: Container(
               decoration: Themes.boxDecoration,
               padding: EdgeInsets.symmetric(vertical: 15),
               child: TabBar(
                 padding: EdgeInsets.zero,
                 controller: subscriptionTabController.tabController,
                 unselectedLabelStyle: GoogleFonts.inter(
                     fontWeight: FontWeight.w500,
                     fontSize: 14
                 ),
                 labelStyle: GoogleFonts.inter(
                     color: Colors.white,
                     fontWeight: FontWeight.w600,
                     fontSize: 16
                 ),
                 indicatorColor: Colors.transparent,
                 labelColor: Colors.white,
                 unselectedLabelColor: Colors.grey,
                 dividerColor: Colors.transparent,
                 tabs: [
                   Container(
                       height: 40,width: 120,
                       decoration: Themes.tabDecoration,
                       child: Tab(text: 'Monthly')),
                   Container(
                       height: 40,width: 120,
                       decoration: Themes.tabDecoration,
                       child: Tab(text: 'Yeary', )),
                 ],
               ),
             ),
           ),
           Expanded(
             child: TabBarView(
               controller: subscriptionTabController.tabController,
               children: subscriptionTabController.listingScreens,

             ),
           ),
         ],
        ),
      ),
    );
  }
}
