import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:property/app/common_widget/common_app_bar.dart';
import 'package:property/app/modules/property_details(Listing)/property_detail_controller.dart';
import 'package:property/app/utilis/app_color.dart';

import '../../common_widget/common_materialbutton.dart';
import '../../utilis/images.dart';
import '../../utilis/theme.dart';

class PropertyDetailsScreen extends StatefulWidget {
  const PropertyDetailsScreen({super.key});

  @override
  State<PropertyDetailsScreen> createState() => _PropertyDetailsScreenState();
}

class _PropertyDetailsScreenState extends State<PropertyDetailsScreen> {


 final  PropertyDetailController propertyDetailController = Get.put(PropertyDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Property Details',
      automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_outlined,
          size: 30,color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 40,),
              // Center(
              //   child: Text('Property Details',
              //   style: GoogleFonts.inter(
              //     color: AppColor.primaryColor,
              //     fontSize: 30,
              //     fontWeight: FontWeight.w600
              //   ),
              //   ),
              // ),
              SizedBox(height: 15,),
              Text('Yolanda Bird',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 15,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  ProjectImages.all_list_hotel,
                  width: MediaQuery.of(context).size.width,
                  height:
                  MediaQuery.of(context).size.height * 0.40,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 15,),
              Text('Description',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 5,),
              Text('Nisi non ea commodi',
                style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 15,),
              Text('Location',
                style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 5,),
              Text('Quo eveniet sequi d',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 5,),
              Text('Price : 780.00/ Month',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 15,),
              Text('Specification',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColor.secondrytxtColor,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                    size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Bed Rooms : Dolore sit quam ius',
                  style: GoogleFonts.inter(
                    color: AppColor.txtColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                  ),
                  )

                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Bath Rooms : Et sunt dignissimos',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Kitchen Rooms : Non distinctio Et n',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Dinning Rooms : Explicabo Quo inven',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Living Rooms : Facere ea est exped',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Storage Rooms : Consectetur esse ex',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Voluptas odio minima',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 30,),
              Text('Property Details',
              style: GoogleFonts.inter(
                color: AppColor.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Interior : Voluptas ullam omnis',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Type : Aperiam fuga Autem',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  ),


                ],
              ),
              SizedBox(height: 30,),
              Text('Amenities',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('File Security',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Swimming Pool',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Security Privacy',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 20,),
              Container(
                decoration: Themes.shadowDecoration,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ProjectImages.tickets_person,
                    height: 50,width: 50,
                    ),
                    Text('Owner Doe',
                    style: GoogleFonts.inter(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 17
                    ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call,size: 20,color: AppColor.primaryColor,),
                        SizedBox(width: 10,),
                        Text('09152973806',
                        style: GoogleFonts.inter(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.forward_to_inbox_sharp,size: 20,color: AppColor.primaryColor,),
                        SizedBox(width: 10,),
                        Text('owner@gmail.com',
                          style: GoogleFonts.inter(
                              color: AppColor.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),

              propertyDetailController.initialPosition ==
                  LatLng(0.0, 0.0)
                  ? Center(
                  child: CircularProgressIndicator(
                    color: AppColor.primaryColor,
                  ))
                  : Center(
                child: Container(
                  height: MediaQuery.of(context).size.height *
                      0.50,
                  width: MediaQuery.of(context).size.width *
                      0.75,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppColor.secondrytxtColor,
                          width: 1)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: propertyDetailController
                            .initialPosition,
                        zoom: 14.0,
                      ),
                      myLocationEnabled: true,
                      myLocationButtonEnabled: false,
                      zoomControlsEnabled: true,
                      mapToolbarEnabled: true,
                      markers: {
                        Marker(
                          markerId:
                          MarkerId('currentLocation'),
                          position: propertyDetailController
                              .currentPosition,
                          icon: BitmapDescriptor
                              .defaultMarkerWithHue(
                              BitmapDescriptor.hueBlue),
                        ),
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text('Nearby Information',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
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
                            decoration: Themes.allListingDecoration,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Carter Porter',
                                    style: GoogleFonts.inter(
                                        color: AppColor.primaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'In animi veniam ei',
                                    style: GoogleFonts.inter(
                                        color:AppColor.txtColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Distance : Quod pariatur Sunt',
                                    style: GoogleFonts.inter(
                                        color:AppColor.txtColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Contact Number : 293',
                                    style: GoogleFonts.inter(
                                        color:AppColor.txtColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),


                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
              SizedBox(height: 20,),
              Text('Advantages',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: AppColor.secondrytxtColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_forward,
                      size: 20,color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Pets Allowed',
                    style: GoogleFonts.inter(
                        color: AppColor.txtColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                  )

                ],
              ),
              SizedBox(height: 20,),
              CommonMaterialButton(
                text: 'Contact Us',
                color: AppColor.primaryColor,
                textcolor: Colors.white,
                ontap: () {
                  Get.toNamed('/contactusproperty');
                },
                height: 50,
                width: MediaQuery.of(context).size.width*0.34,
              ),
              SizedBox(height: 30,),
              Text('Related Properties',
                style: GoogleFonts.inter(
                    color: AppColor.primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                ),
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
    );
  }
}
