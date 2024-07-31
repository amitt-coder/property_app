import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/modules/all_tenants_detail/profile_information/profile_information_controller.dart';

import '../../../common_widget/common_app_bar.dart';
import '../../../utilis/app_color.dart';
import '../../../utilis/images.dart';
import '../../../utilis/theme.dart';

class ProfileInformationScreen extends StatefulWidget {
  const ProfileInformationScreen({super.key});

  @override
  State<ProfileInformationScreen> createState() => _ProfileInformationScreenState();
}

class _ProfileInformationScreenState extends State<ProfileInformationScreen> {
  ProfileInformationController profileInformationController = Get.put(ProfileInformationController());

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
        title: 'Personal Information',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
          Container(
          margin: EdgeInsets.only(top: 20),
          decoration: Themes.shadowDecoration,
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(ProjectImages.tickets_person,
                height: 60,width: 60,fit: BoxFit.fill,
              ),
              SizedBox(height: 10,),
              Text('Personal Information',
              style: GoogleFonts.inter(
                color: AppColor.primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
              ),
              SizedBox(height: 5,),
              Divider(
                color: AppColor.borderColor,
                thickness: 1,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Name:',
                  style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                  SizedBox(width: 20,),
                  Text('Liam Noah',
                  style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Contact Number:',
                  style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                  SizedBox(width: 20,),
                  Text('5552728282',
                  style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Email:',
                  style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                  SizedBox(width: 20,),
                  Text('liam@gmail.com',
                  style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Age:',
                  style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                  SizedBox(width: 20,),
                  Text('35',
                  style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Family Members:',
                  style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                  SizedBox(width: 20,),
                  Text('5',
                  style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Job:',
                  style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                  SizedBox(width: 20,),
                  Text('Doctor',
                  style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                  ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              // CommonMaterialButton(text:'View Details',
              //     color: AppColor.primaryColor,
              //     textcolor: AppColor.buttontxtColor,
              //     ontap:(){
              //       Get.toNamed('/alltenantsdetails');
              //     },
              //     height: 45,
              //     width:MediaQuery.of(context).size.width*0.76)
            ],
          ),
                ),
              SizedBox(height: 30,),
              Container(
                decoration: Themes.shadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text('Previous Address',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: AppColor.borderColor,
                      thickness: 1,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Address:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('Barrow,Alaska,United States',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('City:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('42671',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('State:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('3920',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Zip Code:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('5673',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Country:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('231',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration: Themes.shadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text('Permanent Address',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    Divider(
                      color: AppColor.borderColor,
                      thickness: 1,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Address:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('Barrow,Alaska,United States',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('City:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('42671',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('State:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('3920',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Zip Code:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('5673',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Country:',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 20,),
                        Text('231',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
