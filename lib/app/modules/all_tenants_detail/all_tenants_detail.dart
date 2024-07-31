import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/common_app_bar.dart';
import '../../utilis/app_color.dart';
import '../../utilis/images.dart';
import '../../utilis/theme.dart';

class AllTenantsDetail extends StatefulWidget {
  const AllTenantsDetail({super.key});

  @override
  State<AllTenantsDetail> createState() => _AllTenantsDetailState();
}

class _AllTenantsDetailState extends State<AllTenantsDetail> {

  List<DrawerList> drawerList = [
    DrawerList(image: ProjectImages.userDark, name: 'Profile Information'),
    DrawerList(image: ProjectImages.home, name: 'Home Details'),
    DrawerList(image: ProjectImages.billing_center, name: 'Payment History'),
    DrawerList(image: ProjectImages.document, name: 'Document'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
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
        title: 'Profile',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.76,
                child:  GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7 / 0.4,
                    crossAxisSpacing: 10,
                    // mainAxisExtent: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount:drawerList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        // SizedBox(height: 15,),
                        InkWell(
                          onTap: (){
                            if(index==0){
                              Get.toNamed('/profileinformation');
                            }
                            if(index==1){
                              Get.toNamed('/homedetails');
                            }
                            if(index==2){
                              Get.toNamed('/paymenthistory');
                            }
                            if(index==3){
                              Get.toNamed('/document');
                            }
                          },
                          child: Container(
                            decoration: Themes.boxDecoration,
                            height: 55,
                            width: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(drawerList[index].image,
                                width: 25,height: 25,color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(drawerList[index].name,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 11
                          ),
                        ),
                      ],
                    );
                  },
                )
            ),
          ],
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