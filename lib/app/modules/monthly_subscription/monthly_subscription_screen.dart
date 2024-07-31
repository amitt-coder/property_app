import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_button_border.dart';

class MonthlySubscriptionScreen extends StatefulWidget {
  const MonthlySubscriptionScreen({super.key});

  @override
  State<MonthlySubscriptionScreen> createState() =>
      _MonthlySubscriptionScreenState();
}

class _MonthlySubscriptionScreenState extends State<MonthlySubscriptionScreen> {
  final List<Map<String, dynamic>> plans = [
    {
      "title": "Basic",
      "price": "\$9.99/monthly",
      "features": [
        "Add 2 Properties",
        "Add 0 Units",
        "Add 1 Maintainers",
        "Add 1 Invoices",
        "1 Auto Invoice Generate",
      ],
    },
    {
      "title": "Standard",
      "price": "\$14.99/monthly",
      "features": [
        "Add 5 Properties",
        "Add 0 Units",
        "Add 10 Maintainers",
        "Add 3000 Invoices",
        "300 Auto Invoice Generate",
        "Ticket Support",
        "Notice Support",
      ],
    },
    {
      "title": "Silver",
      "price": "\$19.99/monthly",
      "features": [
        "Add 15 Properties",
        "Add 0 Units",
        "Add 50 Maintainers",
        "Add 5000 Invoices",
        "5000 Auto Invoice Generate",
        "Ticket Support",
        "Notice Support",
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:  MediaQuery.of(context).size.height*0.55,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: plans.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final plan = plans[index];
                  return Container(
                    margin: EdgeInsets.only(left: 20),
                    decoration: Themes.shadowDecoration,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plan['title'],
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        SizedBox(height: 8),
                        Text(
                          plan['price'],
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "What's included",
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:
                              List.generate(
                                  plan['features'].length, (index) {
                            return Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: AppColor.secondrytxtColor,
                                  size: 25,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  plan['features'][index],
                                  style: GoogleFonts.inter(
                                      color: AppColor.txtColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            );
                          }),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CommonButtonBorder(
                          height: 45,
                          width: MediaQuery.of(context).size.width * 0.65,
                          color: Colors.white,
                          ontap: () {},
                          text: 'Subscribe Now',
                          textcolor: AppColor.primaryColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Container(
            //   decoration: Themes.shadowDecoration,
            //   padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text('Basic',
            //       style: GoogleFonts.inter(
            //         color: AppColor.primaryColor,
            //         fontWeight: FontWeight.w600,
            //         fontSize: 18
            //       ),
            //       ),
            //       Divider(
            //         color: AppColor.borderColor,
            //         thickness: 2,
            //       ),
            //       Row(
            //         children: [
            //           Text('\$ 9.99',
            //           style: GoogleFonts.inter(
            //             color: AppColor.primaryColor,
            //             fontSize: 20,
            //             fontWeight: FontWeight.w600
            //           ),
            //           ),
            //           Text('/monthly',
            //           style: GoogleFonts.inter(
            //             color: AppColor.txtColor,
            //             fontSize: 14,
            //             fontWeight: FontWeight.w400
            //           ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: 5,),
            //       Text('Whats included',
            //       style: GoogleFonts.inter(
            //         color: AppColor.primaryColor,
            //         fontWeight: FontWeight.w500,
            //         fontSize: 18
            //       ),
            //       ),
            //       SizedBox(height: 10,),
            //       Row(
            //         children: [
            //           Icon(Icons.check_circle,color: AppColor.secondrytxtColor,size: 25,),
            //            SizedBox(width: 10,),
            //            Text('Add 2 Properties',
            //            style: GoogleFonts.inter(
            //              color: AppColor.txtColor,
            //              fontSize: 15,
            //              fontWeight: FontWeight.w500
            //            ),
            //            )
            //         ],
            //       ),
            //       SizedBox(height: 5,),
            //       Row(
            //         children: [
            //           Icon(Icons.check_circle,color: AppColor.secondrytxtColor,size: 25,),
            //           SizedBox(width: 10,),
            //           Text('Add 0 Units',
            //             style: GoogleFonts.inter(
            //                 color: AppColor.txtColor,
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.w500
            //             ),
            //           )
            //         ],
            //       ),
            //       SizedBox(height: 5,),
            //       Row(
            //         children: [
            //           Icon(Icons.check_circle,color: AppColor.secondrytxtColor,size: 25,),
            //           SizedBox(width: 10,),
            //           Text('Add 1 Maintainers',
            //             style: GoogleFonts.inter(
            //                 color: AppColor.txtColor,
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.w500
            //             ),
            //           )
            //         ],
            //       ),
            //       SizedBox(height: 5,),
            //       Row(
            //         children: [
            //           Icon(Icons.check_circle,color: AppColor.secondrytxtColor,size: 25,),
            //           SizedBox(width: 10,),
            //           Text('Add 1 Invoices',
            //             style: GoogleFonts.inter(
            //                 color: AppColor.txtColor,
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.w500
            //             ),
            //           )
            //         ],
            //       ),
            //       SizedBox(height: 5,),
            //       Row(
            //         children: [
            //           Icon(Icons.check_circle,color: AppColor.secondrytxtColor,size: 25,),
            //           SizedBox(width: 10,),
            //           Text('1 Auto Invoice Generate',
            //             style: GoogleFonts.inter(
            //                 color: AppColor.txtColor,
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.w500
            //             ),
            //           )
            //         ],
            //       ),
            //       SizedBox(height: 20,),
            //       CommonButtonBorder(
            //         height: 45,
            //         width: MediaQuery.of(context).size.width*0.65,
            //         color: Colors.white,
            //         ontap: (){},
            //         text: 'Subscribe Now',
            //         textcolor: AppColor.primaryColor,
            //       ),
            //       SizedBox(height: 20,),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
