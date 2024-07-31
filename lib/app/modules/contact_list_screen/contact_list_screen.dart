import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/common_widget/dropdown_field.dart';
import 'package:property/app/modules/contact_list_screen/contact_list_controller.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/editprofile_textformfield_widget.dart';

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {

  final ContactListController contactListController = Get.put(ContactListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: Themes.withoutbordershadowDecoration,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text('Contact List',
                  style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 22
                  ),
                  ),
                  SizedBox(height: 20,),
                  Divider(
                    color: AppColor.borderColor,
                      thickness: 1,
                  ),
                  SizedBox(height: 30,),
                  Container(
                    decoration: Themes.boxDecoration,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Show',
                            style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                            ),
                            ),
                            SizedBox(width: 5,),
                            DropDownField(selectValue:contactListController.showContact.value,
                                hintName: 'show', width: 80, height: 60,
                                selectPriceInstallment:contactListController.showcontactList,
                                controller: contactListController),
                            SizedBox(width: 5,),
                            Text('entries',
                              style: GoogleFonts.inter(
                                  color: AppColor.txtColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Text('Search : ',
                              style: GoogleFonts.inter(
                                  color: AppColor.txtColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(width: 10,),
                            EditProfileTextFormField(
                              widthGet: 180,
                              TextEditingController: null,
                              hintName: '',
                              TextInputType: TextInputType.name,
                              inputFormatters: [LengthLimitingTextInputFormatter(20)],
                              enable: true,
                              showIcon: '',
                              obscured: false,
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Divider(
                          color: AppColor.borderColor,
                          thickness: 1,
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('SL',
                              style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),
                              ),
                              Text('Name',
                              style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),
                              ),
                              Text('Email',
                              style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder:(context,index){
                          return Container(
                            decoration: Themes.shadowDecoration,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('01',
                                  style: GoogleFonts.inter(
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                                Text('Owner',
                                  style: GoogleFonts.inter(
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: Text('Owner@gmail.com',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16
                                    ),overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
