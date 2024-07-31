import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/common_widget/common_materialbutton.dart';
import 'package:property/app/modules/upload_listing/upload_listing_screen.dart';
import 'package:property/app/routes/app_routes.dart';
import 'package:property/app/utilis/images.dart';
import 'package:property/app/utilis/theme.dart';
import '../../utilis/app_color.dart';

class AllListingScreen extends StatefulWidget {
  const AllListingScreen({super.key});

  @override
  State<AllListingScreen> createState() => _AllListingScreenState();
}

class _AllListingScreenState extends State<AllListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Container(
          decoration: Themes.withoutbordershadowDecoration,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'All List',
                  style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: AppColor.borderColor,
                  thickness: 1,
                ),
                SizedBox(
                  height: 15,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Yolanda Bird',
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
                                          'Quo eveniet sequi d',
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
                                              children: [
                                                Icon(
                                                  Icons.account_balance_sharp,
                                                  size: 20,
                                                  color: AppColor.txtColor,
                                                ),
                                                Text(
                                                  'Voluptas ullam omnis',
                                                  style: GoogleFonts.inter(
                                                      color: AppColor.txtColor,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.account_balance_sharp,
                                                  size: 20,
                                                  color: AppColor.txtColor,
                                                ),
                                                Text(
                                                  'Dolore sit quam ius Bed Rooms',
                                                  style: GoogleFonts.inter(
                                                      color: AppColor.txtColor,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  size: 20,
                                                  color: AppColor.txtColor,
                                                ),
                                                Text(
                                                  'Aperiam fuga Autem',
                                                  style: GoogleFonts.inter(
                                                      color: AppColor.txtColor,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Price: 780.00/ Monthly',
                                              style: GoogleFonts.inter(
                                                  color: AppColor.primaryColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
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
                                      Get.toNamed('/propertydetail');
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
          ),
        ),
      ),
    );
  }
}
void _showPopupMenu(BuildContext context) {
  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  showMenu<int>(
    context: context,
    useRootNavigator:true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5)
    ),
    position: RelativeRect.fromLTRB(400, 470, 400, 300),
    items: [
      // popupmenu item 1
      PopupMenuItem(
        onTap: (){
        Get.toNamed(AppRoutes.UPLOADINGLISTING);
                 },
        value: 1,
        // row has two child icon and text.
        child:  Text("Edit",
        style: GoogleFonts.inter(
          color: AppColor.txtColor,
          fontWeight: FontWeight.w400,
          fontSize: 15
        ),
        ),
      ),
      // popupmenu item 2
      PopupMenuItem(
        value: 2,
        // row has two child icon and text
        child: Text("Delete",
          style: GoogleFonts.inter(
              color: AppColor.txtColor,
              fontWeight: FontWeight.w400,
              fontSize: 15
          ),
        ),
      ),
    ],
    color: Colors.white,
    elevation: 2,
  );
}
