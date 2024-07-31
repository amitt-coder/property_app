import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/modules/my_listing/my_listing_controller.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_app_bar.dart';
class MyListingScreen extends StatefulWidget {
  const MyListingScreen({super.key});

  @override
  State<MyListingScreen> createState() => _MyListingScreenState();
}

class _MyListingScreenState extends State<MyListingScreen> with SingleTickerProviderStateMixin{

final MyListingController myListingController = Get.put(MyListingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        automaticallyImplyLeading: false,
        title: 'My Listing',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Container(
                decoration: Themes.boxDecoration,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: TabBar(
                  padding: EdgeInsets.zero,
                  controller: myListingController.tabController,
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
                        child: Tab(text: 'Upload')),
                    Container(
                        height: 40,width: 120,
                        decoration: Themes.tabDecoration,
                        child: Tab(text: 'All', )),
                    // Container(
                    //     height: 40,width: 120,
                    //     decoration:  Themes.tabDecoration,
                    //     child: Tab(text: 'Contact')),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: myListingController.tabController,
                children: myListingController.listingScreens,

              ),
            ),
          ],
        )
      ),
    );
  }
}

