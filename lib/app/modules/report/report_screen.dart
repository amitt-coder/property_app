import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/common_app_bar.dart';
import '../../utilis/app_color.dart';
import '../../utilis/images.dart';
import '../../utilis/theme.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {

  List<DrawerList> drawerList = [
    DrawerList(image: ProjectImages.earning, name: 'Earning'),
    DrawerList(image: ProjectImages.loss_profit, name: 'Loss/Profit By Month'),
    DrawerList(image: ProjectImages.expenses, name: 'Expenses'),
    DrawerList(image: ProjectImages.occupancy, name: 'Occupancy'),
    DrawerList(image: ProjectImages.document, name: 'Maintenance'),
    DrawerList(image: ProjectImages.Tenants, name: 'Tenant'),
  ];

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
        title: 'Report',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
                height: MediaQuery.of(context).size.height * 0.40,
                child:  GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.7 / 0.7,
                    crossAxisSpacing: 10,
                    // mainAxisExtent: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount:drawerList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        // SizedBox(height: 15,),
                        InkWell(
                          onTap: (){
                            if(index==0){
                              Get.toNamed('/earning');
                            }
                            if(index==1){
                              Get.toNamed('/lossprofitbymonth');
                            }
                            if(index==2){
                              Get.toNamed('/expensesreport');
                            }
                            if(index==3){
                              Get.toNamed('/occupancy');
                            }if(index==4){
                              Get.toNamed('/maintenancereport');
                            }if(index==5){
                              Get.toNamed('/tenantreport');
                            }
                          },
                          child: Container(
                            decoration: Themes.boxDecoration,
                            height: 55,
                            width: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(drawerList[index].image,
                                width: 25,height: 25,color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(drawerList[index].name,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 11
                          ),
                        ),
                      ],
                    );
                  },
                )
            ),
          ],
        )
      ),
    );
  }
}

class DrawerList {
  String image = '';
  String name = '';

  DrawerList({required this.image, required this.name});
}