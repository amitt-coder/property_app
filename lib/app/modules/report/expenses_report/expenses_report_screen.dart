import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common_widget/common_app_bar.dart';
import '../../../utilis/app_color.dart';
import '../../../utilis/theme.dart';

class ExpensesReportScreen extends StatefulWidget {
  const ExpensesReportScreen({super.key});

  @override
  State<ExpensesReportScreen> createState() => _ExpensesReportScreenState();
}

class _ExpensesReportScreenState extends State<ExpensesReportScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        title: 'Expenses Report',
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
                            Text('Name: ',
                              style: GoogleFonts.inter(
                                  color:AppColor.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15
                              ),
                            ),
                            Text('Repairing the roof',
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
                            Text('Oceanview Villa',
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
                            Text('2023-02-04',
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
                            Text('\$600',
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
