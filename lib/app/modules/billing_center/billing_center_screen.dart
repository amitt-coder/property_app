import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/common_widget/common_button_border.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_app_bar.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/dropdown_field.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';
import 'billing_center_controller.dart';

class BillingCenterScreen extends StatefulWidget {
  const BillingCenterScreen({super.key});

  @override
  State<BillingCenterScreen> createState() => _BillingCenterScreenState();
}

class _BillingCenterScreenState extends State<BillingCenterScreen> {
  final BillingCenterController billingCenterController =
      Get.put(BillingCenterController());
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
        title: 'Billing Center',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filter',
                    style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  DropDownField(
                      selectValue: billingCenterController.showContact.value,
                      hintName: 'show',
                      width: 150,
                      height: 60,
                      selectPriceInstallment:
                          billingCenterController.showcontactList,
                      controller: billingCenterController),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: Themes.shadowDecoration,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Invoice',
                                style: GoogleFonts.inter(
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                '   INV-00000002(Water bill)',
                                style: GoogleFonts.inter(
                                    color: AppColor.txtColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Property',
                                style: GoogleFonts.inter(
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                'The Ivy Residences',
                                style: GoogleFonts.inter(
                                    color: AppColor.txtColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Due Date',
                                style: GoogleFonts.inter(
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                '2023-01-31',
                                style: GoogleFonts.inter(
                                    color: AppColor.txtColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Action',
                                style: GoogleFonts.inter(
                                    color: AppColor.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        editBillingCenter(context);
                                      },
                                      child: Icon(
                                        Icons.edit,
                                        size: 25,
                                        color: AppColor.txtColor,
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Get.toNamed('/viewbillingcenter');
                                      },
                                      child: Icon(
                                        Icons.remove_red_eye,
                                        size: 25,
                                        color: AppColor.txtColor,
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        sendReminder(context);
                                      },
                                      child: Icon(
                                        Icons.send,
                                        size: 25,
                                        color: AppColor.txtColor,
                                      )),
                                ],
                              )
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

  editBillingCenter(
    context,
  ) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonButtonBorder(
                    text: 'Back',
                    color: Colors.white,
                    textcolor: AppColor.primaryColor,
                    ontap: () {
                      Get.back();
                    },
                    height: 45,
                    width: 100),
                CommonMaterialButton(
                    text: 'Update',
                    color: AppColor.primaryColor,
                    textcolor: Colors.white,
                    ontap: () {
                      Get.back();
                    },
                    height: 45,
                    width: 100)
              ],
            )
          ],
          content: SingleChildScrollView(
            child: Container(
                // color: Colors.white,
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Edit Invoice',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.red,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Invoice Prefix',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                EditProfileTextFormField(
                  TextEditingController: null,
                  hintName: 'Invoice for February 2023 for Unit 1,Ocean Villa',
                  TextInputType: TextInputType.name,
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                  enable: true,
                  showIcon: '',
                  obscured: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Property',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropDownField(
                      selectValue: billingCenterController.showProperty.value,
                      hintName: 'show',
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 60,
                      selectPriceInstallment:
                          billingCenterController.showpropertyList,
                      controller: billingCenterController),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Unit',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropDownField(
                      selectValue: billingCenterController.showUnit.value,
                      hintName: 'show',
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 60,
                      selectPriceInstallment:
                          billingCenterController.showunitList,
                      controller: billingCenterController),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Month',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropDownField(
                      selectValue: billingCenterController.showMonth.value,
                      hintName: 'show',
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 60,
                      selectPriceInstallment:
                          billingCenterController.showmmonthList,
                      controller: billingCenterController),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Due Date',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                EditProfileTextFormField(
                  TextEditingController: null,
                  hintName: '2023-01-31',
                  TextInputType: TextInputType.name,
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                  enable: true,
                  showIcon: '',
                  obscured: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Invoice Type',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropDownField(
                      selectValue: billingCenterController.invoiceType.value,
                      hintName: 'show',
                      width: MediaQuery.of(context).size.width * 0.65,
                      height: 60,
                      selectPriceInstallment:
                          billingCenterController.invoiceTypeList,
                      controller: billingCenterController),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Amount',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                EditProfileTextFormField(
                  TextEditingController: null,
                  hintName: '300.00',
                  TextInputType: TextInputType.name,
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                  enable: true,
                  showIcon: '',
                  obscured: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Description',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                EditProfileTextFormField(
                  lines: 5,
                  TextEditingController: null,
                  hintName: '',
                  TextInputType: TextInputType.name,
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                  enable: true,
                  showIcon: '',
                  obscured: false,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )),
          ),
        );
      },
    );
  }

  sendReminder(
    context,
  ) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          // elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonButtonBorder(
                    text: 'Back',
                    color: Colors.white,
                    textcolor: AppColor.primaryColor,
                    ontap: () {
                      Get.back();
                    },
                    height: 45,
                    width: 100),
                CommonMaterialButton(
                    text: 'Send',
                    color: AppColor.primaryColor,
                    textcolor: Colors.white,
                    ontap: () {
                      Get.back();
                    },
                    height: 45,
                    width: 100)
              ],
            )
          ],
          content: SingleChildScrollView(
            child: Container(
                // color: Colors.white,
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Send Reminder',
                      style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.red,
                          size: 30,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Title',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                EditProfileTextFormField(
                  TextEditingController: null,
                  hintName: 'Title',
                  TextInputType: TextInputType.name,
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                  enable: true,
                  showIcon: '',
                  obscured: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Body',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                EditProfileTextFormField(
                  lines: 5,
                  TextEditingController: null,
                  hintName: 'Description',
                  TextInputType: TextInputType.name,
                  inputFormatters: [LengthLimitingTextInputFormatter(100)],
                  enable: true,
                  showIcon: '',
                  obscured: false,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )),
          ),
        );
      },
    );
  }
}
