import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/modules/maintainers/maintainers_controller.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/images.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_button_border.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/dropdown_field.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';

class MaintainersScreen extends StatefulWidget {
  const MaintainersScreen({super.key});

  @override
  State<MaintainersScreen> createState() => _MaintainersScreenState();
}

class _MaintainersScreenState extends State<MaintainersScreen> {

  MaintainersController maintainersController = Get.put(MaintainersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          onPressed:(){
            addMaintainers(context);
          },
        child: Icon(Icons.add,size: 40,color: Colors.white,)
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  itemCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return Container(
                  decoration: Themes.shadowDecoration,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(ProjectImages.tickets_person,
                        height: 60,width: 60,
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Alexander Samuel',
                            style: GoogleFonts.inter(
                                color: AppColor.txtColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15
                            ),
                          ),
                          Text('maintainer@gmail.com',
                            style: GoogleFonts.inter(
                                color: AppColor.txtColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15
                            ),
                          ),
                          Text('55532468910',
                            style: GoogleFonts.inter(
                                color: AppColor.txtColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 15
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: AppColor.secondrytxtColor,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Text('Oceanview Villa',
                              style: GoogleFonts.inter(
                                  color: AppColor.buttontxtColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15
                              ),
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                );
              }),

            ],
          ),
        ),
      ),
    );
  }


  addMaintainers(context,) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonButtonBorder(text:'Back',
                    color:Colors.white,
                    textcolor: AppColor.primaryColor,
                    ontap:(){
                      Get.back();
                    },
                    height: 45,
                    width: 100),
                CommonMaterialButton(text:'Submit',
                    color:AppColor.primaryColor,
                    textcolor: Colors.white,
                    ontap:(){
                      Get.back();
                    },
                    height: 45,
                    width: 100)
              ],
            )
          ],
          content:  SingleChildScrollView(
            child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add Maintainer',
                      style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                      child:
                      Stack(
                        children: [
                          Obx(() {
                            return maintainersController
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
                                  maintainersController.selectedImagePath.value,
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
                                  maintainersController.showPicker(context,'user');
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
                      // Container(
                      //   height: 100,
                      //   width: 100,
                      //   decoration: BoxDecoration(
                      //       color: AppColor.txtColor,
                      //       shape: BoxShape.circle
                      //   ),
                      //   child: Center(child: Icon(Icons.camera_alt,size: 30,
                      //     color: AppColor.primaryColor,)),
                      // ),
                    ),
                    SizedBox(height: 20,),
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
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
                    SizedBox(height: 15,),
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
                      TextInputType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(5)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 15,),
                    Text('Property',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropDownField(
                          selectValue:maintainersController.showProperty.value,
                          hintName: 'show',
                          width: MediaQuery.of(context).size.width*0.65 , height: 60,
                          selectPriceInstallment:maintainersController.showpropertyList,
                          controller: maintainersController),
                    ),

                  ],
                )
            ),
          ),
        );
      },
    );
  }




}
