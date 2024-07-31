import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widget/common_app_bar.dart';
import '../../../common_widget/common_materialbutton.dart';
import '../../../common_widget/editprofile_textformfield_widget.dart';
import '../../../utilis/app_color.dart';
import '../../../utilis/images.dart';
import '../../../utilis/theme.dart';
import 'all_tenant_edit_controller.dart';

class AllTenantEdit extends StatefulWidget {
  const AllTenantEdit({super.key});

  @override
  State<AllTenantEdit> createState() => _AllTenantEditState();
}

class _AllTenantEditState extends State<AllTenantEdit> {

  final AllTenantEditController allTenantEditController = Get.put(AllTenantEditController());


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
        title: 'Edit Tenant',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: Themes.shadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Obx(() {
                          return allTenantEditController
                              .selectedImagePath.value ==
                              ''
                              ? Image.asset(
                            ProjectImages.tickets_person,
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          )
                              : ClipOval(
                            child: Image.file(
                              File(
                                allTenantEditController
                                    .selectedImagePath.value,
                              ),
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                        Positioned(
                            bottom: 0,
                            right: 10,
                            child: InkWell(
                              onTap: () {
                                allTenantEditController.showPicker(context);
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                    // Image.asset(ProjectImages.tickets_person,
                    //   height: 60,width: 60,fit: BoxFit.fill,
                    // ),
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
                    Text('First Name',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'First Name',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Last Name',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Last Name',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Contact Number',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Contact Number',
                      TextInputType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(11)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Job',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Job',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Age',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Age',
                      TextInputType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(3)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Family Members',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Family Members',
                      TextInputType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(3)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Email',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Email',
                      TextInputType: TextInputType.emailAddress,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Password',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Password',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(8)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
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
                    Text('Address',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Address',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Country',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Country',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('State',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'State',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('City',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'City',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Zip Code',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Zip Code',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
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
                    Text('Address',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Address',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Country',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Country',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('State',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'State',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('City',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'City',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 10,),
                    Text('Zip Code',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Zip Code',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              CommonMaterialButton(
                  text:'Update',
                  color: AppColor.primaryColor,
                  textcolor: AppColor.buttontxtColor,
                  ontap:(){
                    Get.offAllNamed('/bottomnavigation');
                  },
                  height: 50,
                  width:MediaQuery.of(context).size.width),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
