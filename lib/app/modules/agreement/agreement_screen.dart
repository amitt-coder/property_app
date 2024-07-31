import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/common_app_bar.dart';
import '../../common_widget/common_button_border.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/dropdown_field.dart';
import '../../utilis/app_color.dart';
import '../../utilis/theme.dart';
import 'agreement_controller.dart';

class AgreementScreen extends StatefulWidget {
  const AgreementScreen({super.key});

  @override
  State<AgreementScreen> createState() => _AgreementScreenState();
}

class _AgreementScreenState extends State<AgreementScreen> {

  AgreementController agreementController = Get.put(AgreementController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          onPressed:(){
            newAgreement(context);
          },
          child: Icon(Icons.add,size: 40,color: Colors.white,)
      ),
      appBar: CommonAppBar(
        // automaticallyImplyLeading: false,
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
        title: 'Agreement',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:(context,index){
                    return Container(
                      decoration: Themes.shadowDecoration,
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Recipient Name: ',
                                style: GoogleFonts.inter(
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15
                                ),
                              ),
                              Text('Reprairing the roof',
                                style: GoogleFonts.inter(
                                    color: AppColor.txtColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Date: ',
                                style: GoogleFonts.inter(
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15
                                ),
                              ),
                              Text('2024-07-16',
                                style: GoogleFonts.inter(
                                    color: AppColor.txtColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('Status: ',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15
                                    ),
                                  ),
                                  Text('Pending',
                                    style: GoogleFonts.inter(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: AppColor.secondrytxtColor,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Text('View',
                                  style: GoogleFonts.inter(
                                      color: AppColor.buttontxtColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15
                                  ),
                                ),
                              )
                            ],
                          ),
                          // SizedBox(height: 5,),
                          // Row(
                          //   children: [
                          //     Text('Responsibility: ',
                          //       style: GoogleFonts.inter(
                          //           color: AppColor.primaryColor,
                          //           fontWeight: FontWeight.w500,
                          //           fontSize: 15
                          //       ),
                          //     ),
                          //     Text('Property Owner',
                          //       style: GoogleFonts.inter(
                          //           color: AppColor.txtColor,
                          //           fontWeight: FontWeight.w500,
                          //           fontSize: 15
                          //       ),
                          //     ),
                          //   ],
                          // ),
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


  newAgreement(context,) {
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
                CommonMaterialButton(text:'Send',
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
                    Text('New Agreement',
                      style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20,),
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
                          selectValue:agreementController.showProperty.value,
                          hintName: 'show',
                          width: MediaQuery.of(context).size.width*0.65 , height: 60,
                          selectPriceInstallment:agreementController.showpropertyList,
                          controller: agreementController),
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
                          selectValue:agreementController.selectUnit.value,
                          hintName: 'show',
                          width: MediaQuery.of(context).size.width*0.65 , height: 60,
                          selectPriceInstallment:agreementController.selectUnitList,
                          controller: agreementController),
                    ),
                    SizedBox(height: 15,),
                    Text('Upload agreement doc,docx or pdf',
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
