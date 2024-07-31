import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/images.dart';

import '../../common_widget/common_materialbutton.dart';
import '../../utilis/theme.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.borderColor,
      // drawer: Drawer(
      //   child: DrawerScreen(),
      // ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.borderColor,
        elevation: 0,
        centerTitle: true,
        leading: Builder(
            builder: (context) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Image.asset(
                        ProjectImages.drawer,
                        height: 10,
                        width: 10,
                        color: AppColor.primaryColor,
                      )),
                )),
        title: Text(
          'Property',
          style: GoogleFonts.inter(
              color: AppColor.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                size: 22,
                color: AppColor.txtColor,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 15),
            // decoration: Themes.shadowDecoration,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dashboard',
                    style: GoogleFonts.inter(
                        color: AppColor.primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Welcome back, Owner Doe',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CommonMaterialButton(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.20,
                    text: 'Add Property',
                    color: AppColor.primaryColor,
                    textcolor: Colors.white,
                    ontap: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      itemCount: 4,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width * 0.80,
                          height: 120,
                          decoration: Themes.boxDecoration,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.orange,
                                  size: 22,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Total Property',
                                  style: GoogleFonts.inter(
                                      color: AppColor.secondrytxtColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '4',
                                  style: GoogleFonts.inter(
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: Themes.boxDecoration,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rent Overview',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: BarChart(
                            BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: 0,
                              barTouchData: BarTouchData(enabled: false),
                              titlesData: FlTitlesData(
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: true),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget:
                                        (double value, TitleMeta meta) {
                                      final style = GoogleFonts.inter(
                                        color: AppColor.txtColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                      );
                                      Widget text;
                                      switch (value.toInt()) {
                                        case 0:
                                          text = Text('January', style: style);
                                          break;
                                        case 1:
                                          text = Text('February', style: style);
                                          break;
                                        case 2:
                                          text = Text('March', style: style);
                                          break;
                                        case 3:
                                          text = Text('April', style: style);
                                          break;
                                        case 4:
                                          text = Text('May', style: style);
                                          break;
                                        case 5:
                                          text = Text('June', style: style);
                                          break;
                                        case 6:
                                          text = Text('July', style: style);
                                          break;
                                        case 7:
                                          text = Text('August', style: style);
                                          break;
                                        case 8:
                                          text =
                                              Text('September', style: style);
                                          break;
                                        case 9:
                                          text = Text('October', style: style);
                                          break;
                                        case 10:
                                          text = Text('November', style: style);
                                          break;
                                        case 11:
                                          text = Text('December', style: style);
                                          break;
                                        default:
                                          text = Text('', style: style);
                                          break;
                                      }
                                      return SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        child: Transform.rotate(
                                          angle:
                                              -0.7854, // Rotating the text by 45 degrees
                                          child: text,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(show: false),
                              barGroups: List.generate(12, (index) {
                                return BarChartGroupData(
                                  x: index,
                                  barRods: [
                                    BarChartRodData(
                                      toY: 0,
                                      color: Colors.blue,
                                    )
                                  ],
                                );
                              }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: Themes.boxDecoration,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tickets',
                              style: GoogleFonts.inter(
                                  color: AppColor.primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'View All',
                                    style: GoogleFonts.inter(
                                        color: AppColor.secondrytxtColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 20,
                                    color: AppColor.secondrytxtColor,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                decoration: Themes.boxDecoration,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          ProjectImages.tickets_person,
                                          height: 30,
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Elevator not works proper',
                                              style: GoogleFonts.inter(
                                                  color: AppColor.primaryColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              'Maintenance request',
                                              style: GoogleFonts.inter(
                                                  color:
                                                      AppColor.secondrytxtColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              'issue',
                                              style: GoogleFonts.inter(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
