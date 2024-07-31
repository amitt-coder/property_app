import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/common_widget/common_app_bar.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/dailog_box.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';

class ContactUsPropertyScreen extends StatefulWidget {
  const ContactUsPropertyScreen({super.key});

  @override
  State<ContactUsPropertyScreen> createState() => _ContactUsPropertyScreenState();
}

class _ContactUsPropertyScreenState extends State<ContactUsPropertyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Contact us',
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_outlined,size: 30,color: Colors.white,),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                decoration: Themes.boxDecoration,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Center(
                  child: Text('Yolanda Bird',
                  style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 17
                  ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                decoration: Themes.boxDecoration,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Full Name',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: 10,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Full Name',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 15,),
                    Text('Email',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: 10,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Email',
                      TextInputType: TextInputType.emailAddress,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 15,),
                    Text('Phone Number',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: 10,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Phone Number',
                      TextInputType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(11)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 15,),
                    Text('Profession',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: 10,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Profession',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 15,),
                    Text('Details',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: 10,),
                    EditProfileTextFormField(
                      TextEditingController: null,
                      hintName: 'Details',
                      lines: 10,
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(250)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 30,),
                    CommonMaterialButton(
                      text: 'Submit',
                      color: AppColor.primaryColor,
                      textcolor: Colors.white,
                      ontap: () {
                        DialogHelper.showDialog(
                          title: 'Success',
                          content: 'Soon Contact',
                          onConfirm: () {
                           Get.offAllNamed('/bottomnavigation');
                          },
                          onCancel: () {
                            // Perform your action here
                            print('Cancelled');
                            Get.back();
                          },
                        );
                      },
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.34,
                    ),
                    SizedBox(height: 20,),
                    CommonMaterialButton(
                      text: 'Cancel',
                      color: Colors.white,
                      textcolor: AppColor.primaryColor,
                      ontap: () {
                        Get.back();
                      },
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.34,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
