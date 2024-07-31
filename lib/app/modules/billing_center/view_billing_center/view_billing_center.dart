import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../../common_widget/common_app_bar.dart';

class ViewBillingCenter extends StatefulWidget {
  const ViewBillingCenter({super.key});

  @override
  State<ViewBillingCenter> createState() => _ViewBillingCenterState();
}

class _ViewBillingCenterState extends State<ViewBillingCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: 'View Billing Center',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.home,size: 25,color: AppColor.primaryColor,),
                    Text('Property',
                    style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                    ),
                    )
                  ],
                ),
                Container(
                  height: 45,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFF90CAF9),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text('Pending',
                    style: GoogleFonts.inter(
                      color: AppColor.secondrytxtColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ),
                )
              ],
            ),
            // SizedBox(height: 15,),
            Text('INV-00000002',
            style: GoogleFonts.inter(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 15
            ),
            ),
            Text('24-07-15',
            style: GoogleFonts.inter(
              color: AppColor.txtColor,
              fontWeight: FontWeight.w400,
              fontSize: 15
            ),
            ),
            Text('January',
            style: GoogleFonts.inter(
              color: AppColor.txtColor,
              fontWeight: FontWeight.w400,
              fontSize: 15
            ),
            ),
            SizedBox(height: 10,),
            Divider(
              color: AppColor.borderColor,
                thickness: 1,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Invoice To',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                  ),
                ),
                Text('Pay To',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Liam Noah',
                    style: GoogleFonts.inter(
                      color: AppColor.txtColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                    Text('liam@gmail.com',
                    style: GoogleFonts.inter(
                      color: AppColor.txtColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),
                    )
                  ],
                ),
                Text('Zaiproty',
                  style: GoogleFonts.inter(
                      color: AppColor.txtColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('The Ivy Residences',
                      style: GoogleFonts.inter(
                          color: AppColor.txtColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text('unit 1',
                      style: GoogleFonts.inter(
                          color: AppColor.txtColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('USA',
                      style: GoogleFonts.inter(
                          color: AppColor.txtColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text('551728282',
                      style: GoogleFonts.inter(
                          color: AppColor.txtColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text('Invoice Items',
              style: GoogleFonts.inter(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: Themes.shadowDecoration,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Type - ',
                      style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                      ),

                      Text('Water Bill',
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
                      Text('Description - ',
                      style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.57,
                        child: Text('The bill for supplying water is 300\$',
                        style: GoogleFonts.inter(
                          color: AppColor.txtColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13
                        ),overflow: TextOverflow.ellipsis,
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Text('Amount - ',
                      style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                      ),
                      Text('\$300',
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
                      Text('Tax - ',
                      style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                      ),
                      Text('\$0.00',
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
                      Text('Total - ',
                      style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                      ),
                      Text('\$ 300.00',
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
            )


          ],
        ),
      ),
    );
  }
}
