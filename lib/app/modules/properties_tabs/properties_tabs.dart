import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/common_widget/common_app_bar.dart';
import 'package:property/app/modules/properties_tabs/properties_tab_controller.dart';
import 'package:property/app/utilis/app_color.dart';

import '../../utilis/theme.dart';

class PropertiesTabs extends StatefulWidget {
  const PropertiesTabs({super.key});

  @override
  State<PropertiesTabs> createState() => _PropertiesTabsState();
}

class _PropertiesTabsState extends State<PropertiesTabs> {
  PropertiesTabController propertiesTabController =
      Get.put(PropertiesTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Properties',
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
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  decoration: Themes.boxDecoration,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: TabBar(
                    padding: EdgeInsets.zero,
                    controller: propertiesTabController.tabController,
                    unselectedLabelStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 14),
                    labelStyle: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    dividerColor: Colors.transparent,
                    tabAlignment: TabAlignment.center,
                    isScrollable: true,
                    tabs: [
                      Container(
                          height: 40,
                          width: 120,
                          decoration: Themes.tabDecoration,
                          child: Tab(text: 'All Property')),
                      Container(
                          height: 40,
                          width: 120,
                          decoration: Themes.tabDecoration,
                          child: Tab(
                            text: 'All Unit',
                          )),
                      Container(
                          height: 40,
                          width: 120,
                          decoration: Themes.tabDecoration,
                          child: Tab(text: 'Own Property')),
                      Container(
                          height: 40,
                          width: 130,
                          decoration: Themes.tabDecoration,
                          child: Tab(text: 'Lease Property')),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: propertiesTabController.tabController,
                  children: propertiesTabController.listingScreens,
                ),
              ),
            ],
          )),
    );
  }
}
