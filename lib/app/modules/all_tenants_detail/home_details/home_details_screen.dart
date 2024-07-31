import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/images.dart';
import 'package:property/app/utilis/theme.dart';

import '../../../common_widget/common_app_bar.dart';

class HomeDetailsScreen extends StatefulWidget {
  const HomeDetailsScreen({super.key});

  @override
  State<HomeDetailsScreen> createState() => _HomeDetailsScreenState();
}

class _HomeDetailsScreenState extends State<HomeDetailsScreen> {
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
        title: 'Home Details',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(ProjectImages.all_list_hotel,
                width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.40,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20),
              Text('The Ivy Residences',
              style: GoogleFonts.inter(
                color: AppColor.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.location_on,
                  color: AppColor.txtColor,
                    size: 20,
                  ),
                  Text('Kenia, Alaska,United States',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                decoration: Themes.shadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.add_home,color: AppColor.txtColor,size: 20,),
                        Text('Unit 1',
                        style: GoogleFonts.inter(
                          color: AppColor.txtColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 15
                        ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.check_circle,color: AppColor.txtColor,size: 20,),
                        Text('Deactivate Tenant',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Row(
                    children: [
                      Text('Lease Start Date - ',
                        style: GoogleFonts.inter(
                            color: AppColor.txtColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text('2023-02-01',
                        style: GoogleFonts.inter(
                            color: AppColor.blackColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              Row(
                children: [
                  Text('Lease End Date - ',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text('2023-07-31',
                    style: GoogleFonts.inter(
                        color: AppColor.blackColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(
                color: AppColor.borderColor,
                thickness: 1,
              ),
              SizedBox(height: 10),
              Text('Rent Information',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: AppColor.borderColor,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('General Rent',
                        style: GoogleFonts.inter(
                            color: AppColor.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration:Themes.shadowDecoration,
                        width: 100,
                        height: 45,
                        child: Center(
                          child: Text('1000.0',
                          style: GoogleFonts.inter(
                            color: AppColor.txtColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Security Deposit',
                        style: GoogleFonts.inter(
                            color: AppColor.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration:Themes.shadowDecoration,
                        width: 100,
                        height: 45,
                        child: Center(
                          child: Text('100.0',
                          style: GoogleFonts.inter(
                            color: AppColor.txtColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Late Fee',
                        style: GoogleFonts.inter(
                            color: AppColor.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration:Themes.shadowDecoration,
                        width: 100,
                        height: 45,
                        child: Center(
                          child: Text('300.0',
                          style: GoogleFonts.inter(
                            color: AppColor.txtColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Incident Receipt',
                        style: GoogleFonts.inter(
                            color: AppColor.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration:Themes.shadowDecoration,
                        width: 100,
                        height: 45,
                        child: Center(
                          child: Text('100.0',
                            style: GoogleFonts.inter(
                                color: AppColor.txtColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment due on date',
                        style: GoogleFonts.inter(
                            color: AppColor.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        decoration:BoxDecoration(
                            color: AppColor.borderColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(
                                  5.0,
                                  3.0,
                                ),
                                blurRadius: 7.0,
                              ),
                            ]),
                        width: 100,
                        height: 45,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('100.0',
                                style: GoogleFonts.inter(
                                    color: AppColor.blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Icon(Icons.calendar_month,
                              size: 20, color: AppColor.blackColor,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),

          SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
