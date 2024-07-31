import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widget/common_app_bar.dart';
import '../../../utilis/app_color.dart';
import '../../../utilis/theme.dart';

class MaintenanceReportScreen extends StatefulWidget {
  const MaintenanceReportScreen({super.key});

  @override
  State<MaintenanceReportScreen> createState() => _MaintenanceReportScreenState();
}

class _MaintenanceReportScreenState extends State<MaintenanceReportScreen> {
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
        title: 'Maintenance Report',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            ListView.builder(
                itemCount: 2,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return Container(
                    decoration: Themes.shadowDecoration,
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Property Name: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('Oceanview Villa',
                              style: GoogleFonts.inter(
                                  color:AppColor.txtColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Tenant Name: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('William James',
                              style: GoogleFonts.inter(
                                  color:AppColor.txtColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Issue: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('Plumbing problems',
                              style: GoogleFonts.inter(
                                  color:AppColor.txtColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Status: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('Completed',
                              style: GoogleFonts.inter(
                                  color:Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                })

          ],
        ),
      ),
    );
  }
}
