import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/images.dart';

import '../../common_widget/common_app_bar.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../utilis/app_color.dart';
import '../../utilis/theme.dart';

class LangaugeScreen extends StatefulWidget {
  const LangaugeScreen({super.key});

  @override
  State<LangaugeScreen> createState() => _LangaugeScreenState();
}

class _LangaugeScreenState extends State<LangaugeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon:Icon(
            Icons.arrow_back_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: 'Change Language',
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Container(
                    decoration: Themes.withoutbordershadowDecoration,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(ProjectImages.english_language,
                            height: 40,width: 40,
                            ),
                            SizedBox(width: 15,),
                            Text('English',
                            style: GoogleFonts.inter(
                              color: AppColor.txtColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                            ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(ProjectImages.arabic_language,
                              height: 40,width: 40,
                            ),
                            SizedBox(width: 15,),
                            Text('Arabic',
                              style: GoogleFonts.inter(
                                  color: AppColor.txtColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonMaterialButton(
              height: 50,
              width: MediaQuery.of(context).size.width,
              text: 'Update',
              color: AppColor.primaryColor,
              textcolor: Colors.white,
              ontap: () {
                Get.offAllNamed('/bottomnavigation');
              },
              ),
            ),),
        ],
      ),
    );
  }
}
