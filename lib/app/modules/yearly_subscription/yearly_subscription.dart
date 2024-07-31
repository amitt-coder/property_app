import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_button_border.dart';


class YearlySubscriptionScreen extends StatefulWidget {
  const YearlySubscriptionScreen({super.key});

  @override
  State<YearlySubscriptionScreen> createState() =>
      _YearlySubscriptionScreenState();
}

class _YearlySubscriptionScreenState extends State<YearlySubscriptionScreen> {

  final List<Map<String, dynamic>> plans = [
    {
      "title": "Basic",
      "price": "\$99.99/yearly",
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
      "price": "\129.99/yearly",
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
      "price": "\$199.99/yearly",
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
          ],
        ),
      ),
    );
  }
}
