import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/modules/tenants/tenants_controller.dart';

import '../../common_widget/common_app_bar.dart';
import '../../utilis/theme.dart';

class TenantsScreen extends StatefulWidget {
  const TenantsScreen({super.key});

  @override
  State<TenantsScreen> createState() => _TenantsScreenState();
}

class _TenantsScreenState extends State<TenantsScreen> {

  final TenantsController tenantsController = Get.put(TenantsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        automaticallyImplyLeading: false,
        title: 'Tenants',
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
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding:EdgeInsets.symmetric(horizontal: 15,vertical: 30),
        child: Column(
          children: [
            Container(
              decoration: Themes.boxDecoration,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: TabBar(
                padding: EdgeInsets.zero,
                controller: tenantsController.tabController,
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
                // isScrollable: true,
                tabs: [
                  Container(
                      height: 40,
                      width: 120,
                      decoration: Themes.tabDecoration,
                      child: Tab(text: 'All Tenants')),
                  Container(
                      height: 40,
                      width: 120,
                      decoration: Themes.tabDecoration,
                      child: Tab(
                        text: 'Tenant History',
                      )),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tenantsController.tabController,
                children: tenantsController.listingScreens,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
