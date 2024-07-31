import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/common_widget/common_app_bar.dart';
import 'package:property/app/common_widget/common_button_border.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/images.dart';
import 'package:property/app/utilis/theme.dart';

class AllPropertyDetails extends StatefulWidget {
  const AllPropertyDetails({super.key});

  @override
  State<AllPropertyDetails> createState() => _AllPropertyDetailsState();
}

class _AllPropertyDetailsState extends State<AllPropertyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Property Details',
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
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Ivy Residences',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 20,
                    color: AppColor.txtColor,
                  ),
                  Text(
                    'Kenia,Alaska,United States',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  ProjectImages.all_list_hotel,
                  width: MediaQuery.of(context).size.width,
                  height:
                  MediaQuery.of(context).size.height * 0.30,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 15,),
              Text(
                'Description',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              SizedBox(height: 5,),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              SizedBox(height: 15,),
              Text(
                'Image Gallery',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              SizedBox(height: 5,),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: AppColor.borderColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Icon(Icons.image,
                  size: 60,
                    color: AppColor.txtColor,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text(
                'Property Details',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              SizedBox(height: 5,),
              Container(
                decoration: Themes.boxDecoration,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Unit',
                          style: GoogleFonts.inter(
                            color: AppColor.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          Text('2',
                          style: GoogleFonts.inter(
                            color: AppColor.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Available for Lease',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text('2',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Current Tenants',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text('0',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Average Rent',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text('0',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Security Deposit',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text('0',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Late fee',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text('0',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Maintainer Name',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text('0',
                            style: GoogleFonts.inter(
                                color: Colors.transparent,
                                fontSize: 15,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}
