import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/common_widget/common_materialbutton.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/images.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/editprofile_textformfield_widget.dart';

class AllTenantsScreen extends StatefulWidget {
  const AllTenantsScreen({super.key});

  @override
  State<AllTenantsScreen> createState() => _AllTenantsScreenState();
}

class _AllTenantsScreenState extends State<AllTenantsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 20),
                        decoration: Themes.shadowDecoration,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ProjectImages.tickets_person,
                                      height: 50,
                                      width: 50,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Liam Noah',
                                          style: GoogleFonts.inter(
                                              color: AppColor.primaryColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          'liam@gmail.com',
                                          style: GoogleFonts.inter(
                                              color: AppColor.primaryColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                IconButton(
                                    onPressed: () {
                                      Get.toNamed('/alltenantedit');
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: AppColor.txtColor,
                                      size: 25,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CommonMaterialButton(
                                text: 'View Details',
                                color: AppColor.primaryColor,
                                textcolor: AppColor.buttontxtColor,
                                ontap: () {
                                  Get.toNamed('/alltenantsdetails');
                                },
                                height: 45,
                                width: MediaQuery.of(context).size.width * 0.76)
                          ],
                        ),
                      );
                    }),
              ],
            ),
          )),
    );
  }
}
