import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_app_bar.dart';
import '../../common_widget/common_button_border.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/dropdown_field.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';
import 'expenses_controller.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {

  ExpensesController expensesController =  Get.put(ExpensesController());

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
        title: 'Expenses',
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
              onPressed:(){
                addExpensesProperty(context,'Edit');
              },
              icon: Icon(Icons.edit,size: 30,color: Colors.white,)),
          IconButton(
            padding: EdgeInsets.zero,
              onPressed:(){
                addExpensesProperty(context,'Add');
              },
              icon: Icon(Icons.add,size: 30,color: Colors.white,)),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            ListView.builder(
              padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder:(context,index){
              return Container(
                decoration: Themes.shadowDecoration,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Name: ',
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
                        Icon(Icons.delete,size: 30,color: AppColor.primaryColor,)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Property: ',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('Oceanview Villa',
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
                        Text('Type: ',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('Maintenance and repairs',
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
                        Text('Responsibility: ',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('Property Owner',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
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
    );
  }

  addExpensesProperty(context,String title) {
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
                CommonMaterialButton(text:'Update',
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
                   title=='Add'?
                   Text('Add Expenses',
                   style: GoogleFonts.inter(
                     color: AppColor.primaryColor,
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                   ),
                   ):
                   Text('Edit Expenses',
                   style: GoogleFonts.inter(
                     color: AppColor.primaryColor,
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                   ),
                   ),
                   SizedBox(height: 20,),
                   Text('Name',
                     style: GoogleFonts.inter(
                         color: AppColor.primaryColor,
                         fontSize: 15,
                         fontWeight: FontWeight.w500
                     ),
                   ),
                   SizedBox(height: 5,),
                   EditProfileTextFormField(
                     TextEditingController: null,
                     hintName: 'Name',
                     TextInputType: TextInputType.name,
                     inputFormatters: [LengthLimitingTextInputFormatter(20)],
                     enable: true,
                     showIcon: '',
                     obscured: false,
                   ),
                   SizedBox(height: 10,),
                   Text('Property',
                     style: GoogleFonts.inter(
                         color: AppColor.primaryColor,
                         fontSize: 17,
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
                         selectValue:expensesController.showProperty.value,
                         hintName: 'show',
                         width: MediaQuery.of(context).size.width*0.65 , height: 60,
                         selectPriceInstallment:expensesController.showpropertyList,
                         controller: expensesController),
                   ),
                   SizedBox(height: 10,),
                   Text('Unit',
                     style: GoogleFonts.inter(
                         color: AppColor.primaryColor,
                         fontSize: 17,
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
                         selectValue:expensesController.showUnit.value,
                         hintName: 'show',
                         width: MediaQuery.of(context).size.width*0.65 , height: 60,
                         selectPriceInstallment:expensesController.showunitList,
                         controller: expensesController),
                   ),
                   SizedBox(height: 10,),
                   Text('Expenses Type',
                     style: GoogleFonts.inter(
                         color: AppColor.primaryColor,
                         fontSize: 17,
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
                         selectValue:expensesController.showExpensesType.value,
                         hintName: 'show',
                         width: MediaQuery.of(context).size.width*0.65 , height: 60,
                         selectPriceInstallment:expensesController.showExpensesTypeList,
                         controller: expensesController),
                   ),
                   SizedBox(height: 10,),
                   Text('Description',
                     style: GoogleFonts.inter(
                         color: AppColor.primaryColor,
                         fontSize: 15,
                         fontWeight: FontWeight.w500
                     ),
                   ),
                   SizedBox(height: 5,),
                   EditProfileTextFormField(
                     TextEditingController: null,
                     lines: 6,
                     hintName: 'Description',
                     TextInputType: TextInputType.name,
                     inputFormatters: [LengthLimitingTextInputFormatter(150)],
                     enable: true,
                     showIcon: '',
                     obscured: false,
                   ),
                   SizedBox(height: 10,),
                   Text('Responsibilities',
                     style: GoogleFonts.inter(
                         color: AppColor.primaryColor,
                         fontSize: 15,
                         fontWeight: FontWeight.w500
                     ),
                   ),
                   Obx(() {
                     return CheckboxListTile(
                       activeColor: AppColor.primaryColor,
                       title: Text(
                         "Tenant",
                         style: GoogleFonts.manrope(
                             color: AppColor.txtColor,
                             fontWeight: FontWeight.w400,
                             fontSize: 14),
                       ),
                       value: expensesController.isAgreed.value,
                       onChanged: (bool? value) {
                         expensesController.toggleAgreement();
                       },
                       controlAffinity: ListTileControlAffinity.leading,
                     );
                   }),
                   Obx(() {
                     return CheckboxListTile(
                       activeColor: AppColor.primaryColor,
                       title: Text(
                         "Property Owner",
                         style: GoogleFonts.manrope(
                             color: AppColor.txtColor,
                             fontWeight: FontWeight.w400,
                             fontSize: 14),
                       ),
                       value: expensesController.isAgreed2.value,
                       onChanged: (bool? value) {
                         expensesController.toggleAgreement2();
                       },
                       controlAffinity: ListTileControlAffinity.leading,
                     );
                   }),
                   SizedBox(height: 10,),
                   Text('Upload Documents',
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
