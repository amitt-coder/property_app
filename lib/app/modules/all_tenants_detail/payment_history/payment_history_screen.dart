import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widget/common_app_bar.dart';
import '../../../utilis/app_color.dart';
import '../../../utilis/images.dart';
import '../../../utilis/theme.dart';

class PaymentHistoryScreen extends StatefulWidget {
  const PaymentHistoryScreen({super.key});

  @override
  State<PaymentHistoryScreen> createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
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
        title: 'Payment History',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder:(context,index){
              return Container(
                margin: EdgeInsets.only(top: 20),
                decoration: Themes.shadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Property - ',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('The Ivy Residences',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Month - ',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('January',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Invoice - ',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('20232',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('issue Date - ',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                        Text('2023-02-04',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 20,),
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
