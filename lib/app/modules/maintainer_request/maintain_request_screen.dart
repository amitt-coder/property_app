import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_button_border.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/dropdown_field.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';
import 'maintain_request_controller.dart';

class MaintainRequestScreen extends StatefulWidget {
  const MaintainRequestScreen({super.key});

  @override
  State<MaintainRequestScreen> createState() => _MaintainRequestScreenState();
}

class _MaintainRequestScreenState extends State<MaintainRequestScreen> {

  MaintainRequestController maintainRequestController = Get.put(MaintainRequestController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          onPressed:(){
            addMaintenaceRequest(context);
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
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:(context,index){
                return Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: Themes.shadowDecoration,
                  padding: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Property: ',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text('Oceanview Vill',
                            style: GoogleFonts.inter(
                                color: AppColor.txtColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Issue Name: ',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text('Electrical problems',
                            style: GoogleFonts.inter(
                                color: AppColor.txtColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Details: ',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.68,
                            child: Text('i am writting to request your assistance in resolving',
                              style: GoogleFonts.inter(
                                  color: AppColor.txtColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Status: ',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.70,
                            child: Text('In Progress',
                              style: GoogleFonts.inter(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
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

  addMaintenaceRequest(context,) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          elevation: 0,
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
                CommonMaterialButton(text:'Add Request',
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
              // color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add Maintenance Request',
                      style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
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
                          selectValue:maintainRequestController.showProperty.value,
                          hintName: 'show',
                          width: MediaQuery.of(context).size.width*0.65 , height: 60,
                          selectPriceInstallment:maintainRequestController.showpropertyList,
                          controller: maintainRequestController),
                    ),
                    SizedBox(height: 15,),
                    Text('Unit',
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
                          selectValue:maintainRequestController.showUnit.value,
                          hintName: 'show',
                          width: MediaQuery.of(context).size.width*0.65 , height: 60,
                          selectPriceInstallment:maintainRequestController.showunitList,
                          controller: maintainRequestController),
                    ),
                    SizedBox(height: 15,),
                    Text('Issue',
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
                          selectValue:maintainRequestController.issueName.value,
                          hintName: 'show',
                          width: MediaQuery.of(context).size.width*0.65 , height: 60,
                          selectPriceInstallment:maintainRequestController.issueNameList,
                          controller: maintainRequestController),
                    ),
                    SizedBox(height: 15,),
                    Text('Issue Status',
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
                          selectValue:maintainRequestController.issueStatus.value,
                          hintName: 'show',
                          width: MediaQuery.of(context).size.width*0.65 , height: 60,
                          selectPriceInstallment:maintainRequestController.issueStatusList,
                          controller: maintainRequestController),
                    ),

                    SizedBox(height: 15,),
                    Text('Details',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    EditProfileTextFormField(
                      lines: 7,
                      TextEditingController: null,
                      hintName: 'Details',
                      TextInputType: TextInputType.name,
                      inputFormatters: [LengthLimitingTextInputFormatter(20)],
                      enable: true,
                      showIcon: '',
                      obscured: false,
                    ),
                    SizedBox(height: 15,),
                    Text('Attach',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: 50,
                      decoration: Themes.shadowDecoration,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: AppColor.borderColor,
                                border: Border.all(
                                    color: Colors.black, width: 1)),
                            child: Text(
                              'Choose File',
                              style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            'No file chosen',
                            style: GoogleFonts.inter(
                                color: AppColor.txtColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
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
