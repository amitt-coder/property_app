import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widget/common_app_bar.dart';
import '../../../utilis/app_color.dart';
import '../../../utilis/theme.dart';

class TenantReport extends StatefulWidget {
  const TenantReport({super.key});

  @override
  State<TenantReport> createState() => _TenantReportState();
}

class _TenantReportState extends State<TenantReport> {
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
        title: 'Tenant Report',
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
                            Text('Name: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('Liam Noah',
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
                            Text('Email: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('liam@gmail.com',
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
                            Text('Contact: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('5552728282',
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
                            Text('Property: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('The Ivy Residences',
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
                            Text('Paid: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('0',
                              style: GoogleFonts.inter(
                                  color:AppColor.txtColor,
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
