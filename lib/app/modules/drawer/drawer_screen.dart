import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilis/app_color.dart';
import '../../utilis/images.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {


  List<DrawerList> drawerList = [
    DrawerList(image: ProjectImages.Dashboard, name: 'Dashboard'),
    DrawerList(image: ProjectImages.property, name: 'Properties'),
    DrawerList(image: ProjectImages.Tenants, name: 'Tenants'),
    DrawerList(image: ProjectImages.billing_center, name: 'Billing Center'),
    DrawerList(image: ProjectImages.expenses, name: 'Expenses'),
    DrawerList(image: ProjectImages.document, name: 'Documents'),
    DrawerList(image: ProjectImages.information, name: 'information'),
    DrawerList(image: ProjectImages.Dashboard, name: 'Maintains'),
    DrawerList(image: ProjectImages.report, name: 'Report'),
    DrawerList(image: ProjectImages.language, name: 'Langauge'),
    DrawerList(image: ProjectImages.change_password, name: 'Change Password'),
    DrawerList(image: ProjectImages.settings, name: 'Settings'),
    DrawerList(image: ProjectImages.mail, name: 'Bulk Sms/Mail'),
    DrawerList(image: ProjectImages.agreement, name: 'Agreement'),
    DrawerList(image: ProjectImages.subscription, name: 'My Subscription'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: AppColor.primaryColor,
                        size: 50,
                      ),
                      Text(
                        'Property',
                        style: GoogleFonts.inter(
                            color: AppColor.primaryColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: drawerList.length,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final expansionTileChildren = {
                        1: [
                          _buildExpansionTileChild('All Property',),
                          _buildExpansionTileChild('All Unit'),
                          _buildExpansionTileChild('Own Property'),
                          _buildExpansionTileChild('Lease Property'),
                        ],
                        2: [
                          _buildExpansionTileChild('All Tenants'),
                          _buildExpansionTileChild('Tenant History'),
                        ],
                        3: [
                          _buildExpansionTileChild('All Invoices'),
                          _buildExpansionTileChild('Recurring Setting'),
                        ],
                        7: [
                          _buildExpansionTileChild('Maintaines'),
                          _buildExpansionTileChild('Maintainance Request'),
                        ],
                        8: [
                          _buildExpansionTileChild('Earning'),
                          _buildExpansionTileChild('Loss/Profit By Month'),
                          _buildExpansionTileChild('Expenses'),
                          _buildExpansionTileChild('Occupancy'),
                          _buildExpansionTileChild('Maintenance'),
                          _buildExpansionTileChild('Tenant'),
                        ],
                        12: [
                          _buildExpansionTileChild('Sms'),
                          _buildExpansionTileChild('Email'),
                          _buildExpansionTileChild('Email Template'),
                        ],
                      };

                      if (index == 1 || index == 2 || index == 3 || index == 7 || index == 8 || index == 12) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            // margin: EdgeInsets.only(top: 25),
                            child: Theme(
                              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                expandedAlignment: Alignment.center,
                                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                                tilePadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                collapsedBackgroundColor: Colors.transparent,
                                collapsedIconColor: AppColor.txtColor,
                                iconColor: AppColor.txtColor,
                                leading: Image.asset(
                                  drawerList[index].image,
                                  height: 15,
                                  width: 15,
                                ),
                                title: Text(
                                  drawerList[index].name,
                                  style: GoogleFonts.inter(
                                      color: AppColor.txtColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                children: expansionTileChildren[index] ?? [],
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            padding: EdgeInsets.zero,
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                expandedAlignment: Alignment.center,
                                expandedCrossAxisAlignment: CrossAxisAlignment.center,
                                tilePadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                collapsedBackgroundColor: Colors.transparent,
                                collapsedIconColor: AppColor.txtColor,
                                iconColor: AppColor.txtColor,
                                maintainState: true,
                                clipBehavior: Clip.antiAlias,
                                trailing: SizedBox(),
                                leading: GestureDetector(
                                  onTap: (){
                                 if(index == 0){
                                   print('Dashboadr');
                                 }
                                 if(index == 4){
                                   print('Expenses');
                                 }
                                 if(index == 9){
                                   Get.toNamed('/language');
                                 }
                                 if(index == 10){
                                   Get.toNamed('/changepassword');
                                 }
                                  },
                                  child: Image.asset(
                                    drawerList[index].image,
                                    height: 15,
                                    width: 15,
                                  ),
                                ),
                                title: GestureDetector(
                                  onTap: (){
                                    if(index == 0){
                                      print('Dashboadr1');
                                    }
                                    if(index == 4){
                                      print('Expenses1');
                                    }
                                    if(index == 9){
                                      Get.toNamed('/language');
                                    }
                                    if(index == 10){
                                      Get.toNamed('/changepassword');
                                    }
                                  },
                                  child: Text(
                                    drawerList[index].name,
                                    style: GoogleFonts.inter(
                                        color: AppColor.txtColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpansionTileChild(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            Icons.circle,
            color: AppColor.txtColor,
            size: 10,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: GoogleFonts.inter(
                color: AppColor.txtColor,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

}

class DrawerList {
  String image = '';
  String name = '';
  DrawerList({required this.image, required this.name});
}
