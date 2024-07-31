import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:flip_card/flip_card.dart';
import 'package:property/app/utilis/theme.dart';
import '../../common_widget/common_app_bar.dart';

class AllDocumentScreen extends StatefulWidget {
  const AllDocumentScreen({super.key});

  @override
  State<AllDocumentScreen> createState() => _AllDocumentScreenState();
}

class _AllDocumentScreenState extends State<AllDocumentScreen> {
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
        title: 'All Document',
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:(context,index){
                return Container(
                  decoration: Themes.shadowDecoration,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('Document Type: ',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                            ),
                          ),
                          Text('ID Card',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Tenant Name: ',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                            ),
                          ),
                          Text('William James',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Status: ',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                            ),
                          ),
                          Text('Accepted',
                            style: GoogleFonts.inter(
                                color:Colors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 17
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      FlipCard(
                        alignment: Alignment.center,
                        fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
                        direction: FlipDirection.HORIZONTAL, // default
                        side: CardSide.BACK, // The side to initially display.
                        front: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('Front',
                              style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),),
                          ),
                        ),
                        back: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('Back',style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),

            ],
          ),
        ),
      ),
    );
  }
}
