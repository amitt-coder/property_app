import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/images.dart';
import 'package:property/app/utilis/theme.dart';

class TenantHistory extends StatefulWidget {
  const TenantHistory({super.key});

  @override
  State<TenantHistory> createState() => _TenantHistoryState();
}

class _TenantHistoryState extends State<TenantHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder:(context,index){
              return Container(
                decoration: Themes.shadowDecoration,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ProjectImages.tickets_person,
                      height: 60,width: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Liam Noah',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Text('The Ivy Residences',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('1000.00',
                              style: GoogleFonts.inter(
                                  color: AppColor.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text('Draft',
                              style: GoogleFonts.inter(
                                  color: AppColor.secondrytxtColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),

                      ],
                    )
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
