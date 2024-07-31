import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../../common_widget/common_app_bar.dart';

class EarningScreen extends StatefulWidget {
  const EarningScreen({super.key});

  @override
  State<EarningScreen> createState() => _EarningScreenState();
}

class _EarningScreenState extends State<EarningScreen> {
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
        title: 'Earning',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            ListView.builder(
                itemCount: 2,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return Container(
                decoration: Themes.shadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Invoice: ',
                          style: GoogleFonts.inter(
                              color:AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('Invoice',
                          style: GoogleFonts.inter(
                              color:AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Property: ',
                          style: GoogleFonts.inter(
                              color:AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('Property',
                          style: GoogleFonts.inter(
                              color:AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Date: ',
                          style: GoogleFonts.inter(
                              color:AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('2024-07-16',
                          style: GoogleFonts.inter(
                              color:AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Tax: ',
                          style: GoogleFonts.inter(
                              color:AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('\$0',
                          style: GoogleFonts.inter(
                              color:AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Amount: ',
                          style: GoogleFonts.inter(
                              color:AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('\$0',
                          style: GoogleFonts.inter(
                              color:AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            })

          ],
        ),
      ),
    );
  }
}
