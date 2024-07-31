import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/common_app_bar.dart';
import '../../utilis/theme.dart';
import 'maintain_tab_controller.dart';

class MaintainTabScreen extends StatefulWidget {
  const MaintainTabScreen({super.key});

  @override
  State<MaintainTabScreen> createState() => _MaintainTabScreenState();
}

class _MaintainTabScreenState extends State<MaintainTabScreen> {

  MaintainTabController maintainTabController = Get.put(MaintainTabController());

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
        title: 'Maintains',
      ),
      body: Container(
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
                  controller: maintainTabController.tabController,
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
                        child: Tab(text: 'Maintainers')),
                    Container(
                        height: 40,width: 120,
                        decoration: Themes.tabDecoration,
                        child: Tab(text: 'Request', )),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: maintainTabController.tabController,
                children: maintainTabController.listingScreens,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
