import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_app_bar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CommonAppBar(
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
      title: 'Notification',
    ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
            SizedBox(height: 20,),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder:(context,index){
              return Container(
                decoration: Themes.shadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.person_2,
                      size: 40,
                      color: AppColor.primaryColor,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Owner Name',
                          style: GoogleFonts.inter(
                              color: AppColor.secondrytxtColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Text('Lorem Ipsum is simply dummy text',
                          style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
