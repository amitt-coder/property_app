import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/images.dart';

import '../../common_widget/common_app_bar.dart';
import '../../utilis/app_color.dart';
import '../../utilis/theme.dart';

class AllUnitScreen extends StatefulWidget {
  const AllUnitScreen({super.key});

  @override
  State<AllUnitScreen> createState() => _AllUnitScreenState();
}

class _AllUnitScreenState extends State<AllUnitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    // padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(ProjectImages.all_list_hotel,
                          height: 130,width: 100,fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 6,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                Text('Unit 1',
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
                                Text('The Ivy Residences',
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
                                Text('Tenant: ',
                                  style: GoogleFonts.inter(
                                      color:AppColor.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15
                                  ),
                                ),
                                Text('William James',
                                  style: GoogleFonts.inter(
                                      color:AppColor.txtColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15
                                  ),
                                ),//Not Available
                              ],
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
