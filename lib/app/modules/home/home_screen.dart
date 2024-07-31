import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/images.dart';
import 'package:property/app/utilis/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../common_widget/common_app_bar.dart';
import '../../common_widget/custome_carousel_slider.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';
import '../../utilis/app_color.dart';
import 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.put(HomeController());

  List<DrawerList> drawerList = [
    DrawerList(image: ProjectImages.property, name: 'Properties'),
    DrawerList(image: ProjectImages.Tenants, name: 'Tenants'),
    DrawerList(image: ProjectImages.billing_center, name: 'Billing Center'),
    DrawerList(image: ProjectImages.expenses, name: 'Expenses'),
    DrawerList(image: ProjectImages.document, name: 'Documents'),
    DrawerList(image: ProjectImages.Dashboard, name: 'Maintains'),
    DrawerList(image: ProjectImages.report, name: 'Report'),
    DrawerList(image: ProjectImages.agreement, name: 'Agreement'),
    DrawerList(image: ProjectImages.subscription, name: 'My Subscription'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColor.blackColor,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current Location',
                            style: GoogleFonts.inter(
                                color: AppColor.blackColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Indore, India',
                            style: GoogleFonts.inter(
                                color: AppColor.blackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/notification');
                    },
                    child: Icon(
                      Icons.notifications,
                      color: AppColor.blackColor,
                      size: 24,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              EditProfileTextFormField(
                TextEditingController: null,
                hintName: 'Search....',
                TextInputType: TextInputType.name,
                inputFormatters: [LengthLimitingTextInputFormatter(35)],
                enable: true,
                showIcon: '',
                obscured: false,
              ),
              SizedBox(
                height: 20,
              ),
              CustomCarouselSlider(
                imgList: homeController.imgList,
                controller: homeController,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Menu',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.7 / 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: drawerList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              if (index == 0) {
                                Get.toNamed('/propertytab');
                              }
                              if (index == 1) {
                                Get.toNamed('/tenants');
                              }
                              if (index == 2) {
                                Get.toNamed('/billingcenter');
                              }
                              if (index == 3) {
                                Get.toNamed('/expenses');
                              }
                              if (index == 4) {
                                Get.toNamed('/alldocument');
                              }
                              if (index == 5) {
                                Get.toNamed('/maintaintab');
                              }
                              if (index == 6) {
                                Get.toNamed('/report');
                              }
                              if (index == 7) {
                                Get.toNamed('/agreement');
                              }
                              if (index == 8) {
                                Get.toNamed('/subscriptiontab');
                              }
                            },
                            child: Container(
                              decoration: Themes.boxDecoration,
                              height: 55,
                              width: 55,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  drawerList[index].image,
                                  width: 25,
                                  height: 25,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                           SizedBox(
                            height: 5,
                          ),
                          Text(
                            drawerList[index].name,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11),
                          ),
                        ],
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerList {
  String image = '';
  String name = '';

  DrawerList({required this.image, required this.name});
}
