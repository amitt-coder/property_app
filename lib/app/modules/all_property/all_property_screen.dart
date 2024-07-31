import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/routes/app_routes.dart';
import 'package:property/app/utilis/app_color.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../utilis/images.dart';
import '../../utilis/theme.dart';


class AllPropertyScreen extends StatefulWidget {
  const AllPropertyScreen({super.key});

  @override
  State<AllPropertyScreen> createState() => _AllPropertyScreenState();
}

class _AllPropertyScreenState extends State<AllPropertyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: AppColor.primaryColor,
        child: Icon(
          Icons.add,
          size: 30,
          color: AppColor.buttontxtColor,
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                ProjectImages.all_list_hotel,
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.30,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.45,
                              decoration: Themes.allListingDecoration,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'The Ivy Residences...',
                                          style: GoogleFonts.inter(
                                              color: AppColor.primaryColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              _showPopupMenu(context);
                                            },
                                            icon: Icon(
                                              Icons.more_vert,
                                              size: 20,
                                              color: AppColor.txtColor,
                                            ))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 25,
                                          color: AppColor.txtColor,
                                        ),
                                        Text(
                                          'Kenia,Alaska,United States',
                                          style: GoogleFonts.inter(
                                              color: AppColor.txtColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: Themes.shadowDecoration,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .account_balance_sharp,
                                                      size: 20,
                                                      color: AppColor.txtColor,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      '2 Unit',
                                                      style: GoogleFonts.inter(
                                                          color:
                                                              AppColor.txtColor,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.window,
                                                      size: 20,
                                                      color: AppColor.txtColor,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      '5 rooms',
                                                      style: GoogleFonts.inter(
                                                          color:
                                                              AppColor.txtColor,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.person_2,
                                                  size: 20,
                                                  color: AppColor.txtColor,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  '2 Available',
                                                  style: GoogleFonts.inter(
                                                      color: AppColor.txtColor,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CommonMaterialButton(
                                      text: 'View Details',
                                      color: AppColor.primaryColor,
                                      textcolor: Colors.white,
                                      ontap: () {
                                        Get.toNamed('/allpropertydetail');
                                      },
                                      height: 50,
                                      width: MediaQuery.of(context).size.width,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          )),
    );
  }

  void _showPopupMenu(BuildContext context) {
    // final RenderBox overlay =
    //     Overlay.of(context).context.findRenderObject() as RenderBox;
    showMenu<int>(
      context: context,
      position: RelativeRect.fromLTRB(400, 470, 400, 300),
      items: [
        PopupMenuItem(
          onTap: () {
            Get.toNamed(AppRoutes.UPLOADINGLISTING);
          },
          value: 1,
          child: Text(
            "Edit",
            style: GoogleFonts.inter(
                color: AppColor.txtColor,
                fontWeight: FontWeight.w400,
                fontSize: 15),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            Get.back();
          },
          value: 2,
          child: Text(
            "Delete",
            style: GoogleFonts.inter(
                color: AppColor.txtColor,
                fontWeight: FontWeight.w400,
                fontSize: 15),
          ),
        ),
      ],
      color: Colors.white,
      elevation: 2,
    );
  }
}
